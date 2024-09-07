import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speedy/login.dart';
import 'package:speedy/signup.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
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
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  //color: Colors.blueGrey,
                  child: Image.asset("ios/images/shop.png"),
                ),
                const SizedBox(height: 10),
                const Spacer(),
                const Text("Votre nouvelle destination pour des achats rapides et pratiques",
                       style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
                       ),
                       Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [CupertinoButton(
              onPressed:(){{Navigator.push(context,CupertinoPageRoute(builder: (BuildContext context){
                      return const Signup();
                    }));
                    };},
              child: const Text(
                "S'inscrire gratuitement",
                style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold) ,
              ),
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(40),
                       ),const SizedBox(height: 10),
                       OutlinedButton(
              onPressed: (){},
               child:Row(
                 children: [
                  Image.asset("ios/images/facebook.png"),
                  const SizedBox(width: 10),
                   const Text(
                    "continuer avec facebook",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight:FontWeight.bold),
                      ),
                 ],
               ),
                  style: OutlinedButton.styleFrom(side:const  BorderSide(color: Colors.white,width: 2),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                       ),const SizedBox(height: 10),
                       OutlinedButton(
              onPressed: (){},
               child:Row(
                 children: [
                  Image.asset("ios/images/apple.png"),
                  const SizedBox(width: 10),
                   const Text(
                    "continuer avec Apple",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight:FontWeight.bold),
                      ),
                 ],
               ),
                  style: OutlinedButton.styleFrom(side:const  BorderSide(color: Colors.white,width: 2),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                       ),const SizedBox(height: 10),
                       OutlinedButton(
              onPressed: (){},
               child:Row(
                 children: [
                  Image.asset("ios/images/gmail.png"),
                  SizedBox(width: 10),
                   const Text(
                    "continuer avec Gmail",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight:FontWeight.bold),
                      ),
                 ],
               ),
                  style: OutlinedButton.styleFrom(side:const  BorderSide(color: Colors.white,width: 2),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                       ),const SizedBox(height: 10),
                       TextButton(
              onPressed: (){{Navigator.push(context,CupertinoPageRoute(builder: (BuildContext context){
                      return const loginPage();
                    }));
                    };
                    },
               child:const Text(
                "Se connecter",
                style: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.normal),
                ),
                style: OutlinedButton.styleFrom(side:const  BorderSide(color: Colors.white,width: 2),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
               ),
               ],
               ),
              ],
             ),
           ),
           ),
     ),
    );
  }
}