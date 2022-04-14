import 'package:flutter/material.dart';
import 'package:genz/main.dart';

class signup extends StatelessWidget {
  const signup({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(110, 99, 61, 1)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children:<Widget>[
                Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
                ),
                color: Color.fromARGB(255,110, 99, 61),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  Container(),
              Container(
                child:Text("Genz",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
              ),
                ],
              ),
            
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(top:50,left:80,),
              child:Image(
                image: AssetImage("assets/logo.png"),
                width: 100,
                height: 100,
                ) , 
            ),
              ]
            ),
            
              
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(padding: EdgeInsets.all(16.0),
                    child: Icon(Icons.person)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      labelText: 'Nom',
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: 'Entrez Votre Nom'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(padding: EdgeInsets.all(16.0),
                    child: Icon(Icons.person)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      labelText: 'Prenom',
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: 'Entrez votre prenom'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(padding: EdgeInsets.all(16.0),
                    child: Icon(Icons.mail_outline)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: 'Entrer un email valide comme abc@gmail.com'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
      
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Padding(padding: EdgeInsets.all(16.0),
                    child: Icon(Icons.lock_outline)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      labelText: 'Mot De Passe',
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: 'entrer un Mot De Passe'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
      
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Padding(padding: EdgeInsets.all(16.0),
                    child: Icon(Icons.lock_outline)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      labelText: 'Confirmez Mot De Passe',
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: 'Confirmez leMot De Passe'),
                ),
              ),
              SizedBox(height: 20,),
              
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 110, 99, 61), borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => HomePage()));
                  },
                  child: Text(
                    "S'inscrire",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              
            
          ]),
      ),
    );
  }
}