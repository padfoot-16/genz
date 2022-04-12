import 'package:flutter/material.dart';
import 'package:genz/screens/abonnements.dart';
import 'package:genz/screens/acceuil.dart';
import 'package:genz/screens/contact.dart';
import 'package:genz/screens/offres.dart';
import 'package:genz/screens/planning.dart';
import 'package:genz/screens/rating.dart';
import 'package:genz/screens/reservation.dart';
import 'package:genz/screens/signin.dart';
import 'package:genz/screens/signup.dart';
import 'package:genz/screens/ticket.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex=0;
  final screens=[
    acceuil(),
          offres(),
          reservation(),
          rating(),
          contact(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar:AppBar(
          title: Text("Genz"),
          backgroundColor: Colors.red,
        ) ,
        body:IndexedStack(
          index: _selectedIndex,
          children: screens,
          ) ,
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  title: Text("Booking"),
                ),
                ListTile(
                  title: Text("_Ticket"),
                  contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: ( context) => ticket()));
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text("_Abonnements"),
                  onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: ( context) => abonnements())
                    );
            
                  Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text("Planning"),
                  onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: ( context) => planning())
                    );
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text("s'inscrire"),
                  onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: ( context) => signup())
                    );
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text("Se Connecter"),
                  onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: ( context) => signin())
                    );
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: "home"
              ),
            BottomNavigationBarItem(
              icon:Icon(Icons.library_add),
              label: "nos offres"
              ),
            BottomNavigationBarItem(
              icon:Icon(Icons.calendar_today),
              label: "reservez vos dates"
              ),
            BottomNavigationBarItem(
              icon:Icon(Icons.star),
              label: "rate us"
              ),
            BottomNavigationBarItem(
              icon:Icon(Icons.contact_page_outlined),
              label: "contactez nous"
              ),
            
              
          ],
          currentIndex: _selectedIndex,
                  selectedItemColor: Colors.red,
                  onTap: (int index) {
                    setState(() {
                    _selectedIndex=index;
                    });
                  },
        ),
      
        
      ),
    );
    
  }
}


