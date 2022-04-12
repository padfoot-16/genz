import 'package:flutter/material.dart';

class reservation extends StatefulWidget {
  const reservation({ Key? key }) : super(key: key);

  @override
  State<reservation> createState() => _reservationState();
}

class _reservationState extends State<reservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(child: Text("reservation"),)
    );
  }
}