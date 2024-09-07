import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedy/corps/home.dart';
import 'package:speedy/forget.dart';
import 'package:speedy/mainscreen.dart';
class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}
bool bool_isobscure=true;

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(title:const Text("Se connecter",style: TextStyle(fontWeight: FontWeight.bold),
        //style: TextStyle(color: Colors.blueAccent),
        ),
        centerTitle: true,
        //backgroundColor: Colors.black,
        //foregroundColor: Colors.white,
        ),
        body: Container(
          padding:const EdgeInsets.all(25),
          decoration:const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("ios/images/welcome.jpeg"),
              fit: BoxFit.cover,
              opacity: 0.5,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child:  Text("Entrez votre Email",textAlign: TextAlign.left,style: TextStyle(
                      color: Colors.white,
                      fontSize: 25
                    ),),
                    ),
                TextFormField(
              decoration: const InputDecoration(
                labelText: 'Entrez votre Email',
                labelStyle: TextStyle(color: Colors.white,fontSize: 20),
                fillColor: Colors.grey,filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50),
                  ),
                ),
                prefixIcon: Icon(
                  Icons.email,color: Colors.white,
                  ),
              ),
            ),
            const SizedBox(height: 40),
            const Align(
                      alignment: Alignment.topLeft,
                      child:  Text("Entrez votre mot de passe",textAlign: TextAlign.left,style: TextStyle(
                      color: Colors.white,
                      fontSize: 25
                    ),
                    ),
                    ),
             const SizedBox(height: 20),
            TextFormField(
              obscureText: bool_isobscure,
              decoration: InputDecoration(
                labelText: "Entrez votre mot de passe",
                labelStyle: const TextStyle(color: Colors.white,fontSize: 20),
                fillColor: Colors.grey,filled: true,
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50),
                  ),
                ),
                prefixIcon: const Icon(Icons.lock,color: Colors.white),
                suffixIcon: IconButton(icon: const Icon(Icons.remove_red_eye_outlined,color: Colors.white
                ),
                onPressed:(){
                } ,
                ),
            ),
            //const Text("Entrez votre mot de passe",
            ) 
            ,
            const SizedBox(height: 20),
            CupertinoButton(
              child: const Text("se connecter",
              style:TextStyle(
                color: Colors.white),
              ),
              color: Colors.grey,
               onPressed: (){
                Navigator.pushAndRemoveUntil(
                  context,
                   CupertinoPageRoute(
                    builder: (( context)=>const Mainscreen())),
                    (route)=>false);
               }
                ),
               TextButton(onPressed: (){{Navigator.push(context,CupertinoPageRoute(builder: (BuildContext context){
                      return const forget();
                    }));
                    };
                    },
                child:const  Text("mot de passe oublié",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                ),
                ),
                  ],
                )
              ],
            ),
          ),
        ),
     ),
    );
  }
}