import 'package:flutter/material.dart';
class forget extends StatelessWidget {
  const forget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar:AppBar(title:const Text("mot de passe oublié",style: TextStyle(fontWeight: FontWeight.bold),
      ),
      ),
      body: Container(
        padding:const EdgeInsets.all(25) ,
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage("ios/images/welcome.jpeg"),
              fit: BoxFit.cover,
              opacity: 0.5,
            )
         ),
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 10),
           child: Column(
            children: [
            TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Entrez votre email',
                  labelStyle: TextStyle(color: Colors.white,fontSize: 20),
                  fillColor: Colors.grey,filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50),
                    ),
                  ),
                ),
              ),
              //const SizedBox(height: 40),
              //TextFormField(
                //decoration: const InputDecoration(
                  //labelText: 'Entrez votre numero de téléphone',
                  //labelStyle: TextStyle(color: Colors.white,fontSize: 20),
                  //fillColor: Colors.grey,filled: true,
                  //enabledBorder: OutlineInputBorder(
                   // borderRadius: BorderRadius.all(Radius.circular(50),
                    //),
                  //),
                  //prefixIcon: Icon(Icons.email,color: Colors.white,),
                //),
              //),
              ],
            ),
         ),
      )
      ),
       );
  }
}