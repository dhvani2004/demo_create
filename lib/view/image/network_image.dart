import 'package:flutter/material.dart';

class NetworkImageDemo extends StatefulWidget {
  const NetworkImageDemo({super.key});

  @override
  State<NetworkImageDemo> createState() => _NetworkImageDemoState();
}

class _NetworkImageDemoState extends State<NetworkImageDemo> {

  Image image = Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYT5eG7MiCpiBRzqPGQSTs2EIimtNXB6jPwg&s");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NetWork Image",style: TextStyle(color: Colors.black,fontSize: 20),),backgroundColor: Colors.blue,),
      body: Center(
        child: image,
      ),
    );
  }
}
