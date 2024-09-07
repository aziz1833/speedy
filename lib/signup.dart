import 'package:flutter/material.dart';
import 'package:speedy/login.dart';
class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title:const Text("S'inscrire gratuitement",style: TextStyle(fontWeight: FontWeight.bold),
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
            )
         ),
         child: Column(children: [
          TextFormField(
              decoration: const InputDecoration(
                labelText: 'Entrez votre prénom',
                labelStyle: TextStyle(color: Colors.white,fontSize: 20),
                fillColor: Colors.grey,filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Entrez votre email',
                labelStyle: TextStyle(color: Colors.white,fontSize: 20),
                fillColor: Colors.grey,filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50),
                  ),
                ),
                //prefixIcon: Icon(Icons.email,color: Colors.white,),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Entrez votre mot de passe",
                labelStyle: const TextStyle(color: Colors.white,fontSize: 20),
                fillColor: Colors.grey,filled: true,
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50),
                  ),
                ),
                //prefixIcon: const Icon(Icons.lock,color: Colors.white),
                suffixIcon: IconButton(icon: const Icon(Icons.remove_red_eye_outlined,color: Colors.white
                ),
                onPressed:(){} ,
                ),
            ),
            //const Text("Entrez votre mot de passe",
            ) ,
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Confirmez votre mot de passe",
                labelStyle: const TextStyle(color: Colors.white,fontSize: 20),
                fillColor: Colors.grey,filled: true,
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50),
                  ),
                ),
                //prefixIcon: const Icon(Icons.lock,color: Colors.white),
                suffixIcon: IconButton(icon: const Icon(Icons.remove_red_eye_outlined,color: Colors.white
                ),
                onPressed:(){} ,
                ),
            ),
            //const Text("Entrez votre mot de passe",
            ) ,
            const SizedBox(height: 20),
            TextFormField(
              decoration:const InputDecoration(
                labelText:"Entrez votre télephone" ,
                labelStyle:  TextStyle(color: Colors.white,fontSize: 20),
                fillColor: Colors.grey,filled: true,
                enabledBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50),
                  ),
                  ),
                   )
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 60,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 24, 115, 185),
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                          ),
                          child: const Text(
                            "S'inscrire gratuitement",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                       const SizedBox(height: 16.0),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const loginPage()),
                          );
                        },
                        child: const Text("As tu déja un compte ? Se connecter",
                        style: TextStyle(color: Colors.white),),
                      ),
         ],
         ),
        )
      ),
    );
  }
}