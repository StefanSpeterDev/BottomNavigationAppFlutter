import 'package:flutter/material.dart';

import './pages/add_annonce.dart';
import './pages/home.dart';
import './pages/profil.dart';
import './pages/searchPage.dart';
import './pages/messages.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }

}

class MyAppState extends State<MyApp>{
  int _selectedPage = 0;
  final _pageOptions = [
    HomePageState(),
    SearchPage(),
    AddAnnonce(),
    Messages(),
    MyProfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title:Text('onBricole'),),
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home', style: TextStyle(color: Colors.green,)),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Rechercher', style: TextStyle(color: Colors.green,)),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle),
              title: Text('Ajouter', style: TextStyle(color: Colors.green,)),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text('Messages', style: TextStyle(color: Colors.green,)),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,),
              title: Text('Profil', style: TextStyle(color: Colors.green),),
            ),

          ],
        ),
      ),
    );
  }
}

