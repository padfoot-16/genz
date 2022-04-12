import 'package:flutter/material.dart';
import 'package:genz/screens/acceuil.dart';
import 'package:genz/screens/contact.dart';
import 'package:genz/screens/offres.dart';
import 'package:genz/screens/rating.dart';
import 'package:genz/screens/reservation.dart';

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
        appBar:null ,
        body:screens[_selectedIndex] ,
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


