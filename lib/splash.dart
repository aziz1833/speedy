import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speedy/starting.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  get GoogleFonts => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding:const EdgeInsets.all(25),
          decoration:const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("ios/images/welcome.jpeg"),
              fit: BoxFit.cover,
              opacity: 0.5
            )
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment:   Alignment.center,
                child:  Text(
                  "Speedy",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white
                  ),
                 ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                children: [
              const Text(
                  "Votre shopping rapide et simple commence ici",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white
                  ),
                 ),
                 CupertinoButton( 
                  child: const Text("Explorer"),
                   onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                      return const StartingPage();
                    }));
                   },
                   color: Colors.blueAccent,
                   borderRadius: BorderRadius.circular(40),
                ),

                ],
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}