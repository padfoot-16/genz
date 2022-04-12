import 'package:flutter/material.dart';

class rating extends StatefulWidget {
  const rating({ Key? key }) : super(key: key);

  @override
  State<rating> createState() => _ratingState();
}

class _ratingState extends State<rating> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(child: Text("rating"),)
    );
  }
}