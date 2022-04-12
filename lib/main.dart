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
  int _Index=0;
  late TabController _controller;
  
  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 5, vsync: this );
    _Index = 0;}

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar:null ,
        body: TabBarView(
          children:[ acceuil(),
          offres(),
          reservation(),
          rating(),
          contact(),
          ]
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: "home"
              ),
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: "nos offres"
              ),
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: "reservez vos dates"
              ),
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: "rate us"
              ),
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: "contactez nous"
              ),
            
              
          ],
          currentIndex: _Index,
                  selectedItemColor: Colors.black,
                  onTap: (int index) {
                    setState(() {
                    _Index=index;
                    });
                  },
        ),
      
        
      ),
    );
    
  }
}


}