import 'package:flutter/material.dart';
import 'package:genz/screens/signin.dart';
class acceuil extends StatelessWidget {
  const acceuil({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(child:FloatingActionButton(onPressed: () {
        Navigator.push(
                    context,
                    MaterialPageRoute(builder: ( context) => signin())
                    );
      },),)
    );
  }
}