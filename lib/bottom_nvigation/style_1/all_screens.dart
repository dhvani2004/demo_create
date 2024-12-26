//-----------Fv Screen-------------//

import 'package:flutter/material.dart';

class FvScreen extends StatelessWidget {
  const FvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Hi")
          ],
        ),
      ),
    );
  }
}

//-----------Home Screen-------------//

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Hi")
          ],
        ),
      ),
    );
  }
}

//------------Main Screen------------------//

class MainDemo extends StatelessWidget {
  const MainDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Hi")
          ],
        ),
      ),
    );
  }
}

//----------------Person Screen ---------------//

class PersonScreen extends StatelessWidget {
  const PersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Hi")
          ],
        ),
      ),
    );
  }
}

//----------------Shopping Screen ---------------//

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Hi")
          ],
        ),
      ),
    );
  }
}
