import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiPaginationExample extends StatefulWidget {
  final Uri ApiUri;  // The API URI is passed from the parent widget

  const ApiPaginationExample({super.key, required this.ApiUri});

  @override
  _ApiPaginationExampleState createState() => _ApiPaginationExampleState();
}

class _ApiPaginationExampleState extends State<ApiPaginationExample> {
  final ScrollController _scrollController = ScrollController();
  List<String> _items = [];
  bool _isLoading = false;
  int _page = 1;
  final int _itemsPerPage = 20;

  // Use widget.ApiUri to get the Uri passed from the parent widget
  late Uri apiUrl;

  @override
  void initState() {
    super.initState();
    apiUrl = widget.ApiUri; // Assign the API Uri
    _loadMoreData();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      _loadMoreData();
    }
  }

  Future<void> _loadMoreData() async {
    if (_isLoading) return; // Prevent multiple requests
    setState(() {
      _isLoading = true; // Show loading indicator
    });

    // Fetch data from API with pagination parameters (_page and _itemsPerPage)
    final response = await http.get(Uri.parse('$apiUrl?_page=$_page&_limit=$_itemsPerPage'));

    if (response.statusCode == 200) {
      // If the API call is successful, parse the JSON data
      List<dynamic> data = json.decode(response.body);
      List<String> newItems =
      data.map((item) => item['title'].toString()).toList();

      setState(() {
        _items.addAll(newItems); // Add new items to the list
        _page++; // Increment the page for the next request
        _isLoading = false; // Hide loading indicator
      });
    } else {
      setState(() {
        _isLoading = false;
      });
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        controller: _scrollController,
        itemCount: _items.length, // Add one extra for the loading indicator
        itemBuilder: (context, index) {
          if (index == _items.length) {
            // Show loading spinner at the bottom when fetching more data
            return _isLoading
                ? Center(child: CircularProgressIndicator())
                : SizedBox(); // Empty box when not loading
          }
          return ListTile(
            title: Text(_items[index]), // Display the data
          );
        },
      ),
    );
  }
}
