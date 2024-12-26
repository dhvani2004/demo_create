import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AssestImage extends StatefulWidget {
  const AssestImage({super.key});

  @override
  State<AssestImage> createState() => _AssestImageState();
}

class _AssestImageState extends State<AssestImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Assest Image",style: TextStyle(color: Colors.black,fontSize: 20),),backgroundColor: Colors.blue,),
      body: Column(
        children: [
         Center(
           child: Image.asset("assets/images/download.png",
             height: 350,
              width: 350),
         )
        ]
      ),
    );
  }
}
