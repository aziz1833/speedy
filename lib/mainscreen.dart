import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speedy/corps/home.dart';
import 'package:speedy/corps/profile.dart';
import 'package:speedy/corps/shop.dart';
import 'package:speedy/corps/tasks.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

 int selectedIndex =0;
List<Widget>_screens=[Home(),Tasks(),Shop(),Profile()];


class _MainscreenState extends State<Mainscreen> {
  void _onItemTaped(int index){
  setState(() {
    selectedIndex=index;
  });
}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appBar: AppBar(
          //title:const  Text("Speedy",style: TextStyle(fontWeight: FontWeight.bold),),
        //),
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor:Colors.white,
          items: [
            BottomNavigationBarItem(
            icon:Icon(Icons.home),
            label: "home",
            backgroundColor: Colors.blueAccent
            ),
            BottomNavigationBarItem(icon:Icon(Icons.clear_all),
            label: "tasks"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
            label: "shop"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person),
            label: "profile"
            ),
            ],
            backgroundColor: Colors.blueAccent,
            currentIndex: selectedIndex,
            onTap: _onItemTaped,
            ),
        body: _screens[selectedIndex],
      )
      );
  }
}