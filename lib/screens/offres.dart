import 'package:flutter/material.dart';

class offres extends StatefulWidget {
  const offres({ Key? key }) : super(key: key);

  @override
  State<offres> createState() => _offresState();
}

class _offresState extends State<offres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(child: Text("offres"),)
    );
  }
}