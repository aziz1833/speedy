import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(),
      body:Container(
      color: Colors.white,
      child: Column(
      children: [
        ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 24, 115, 185),
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                          ),
                          child: const Text(
                            "connexion quotidienne                3points",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 24, 115, 185),
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                          ),
                          child: const Text(
                            "explorer les articles pendant 15 secondes     5points",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 24, 115, 185),
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                          ),
                          child: const Text(
                            "rechercher un mot clé                5points",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 24, 115, 185),
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                          ),
                          child: const Text(
                            "participer a la jeu               5points",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 24, 115, 185),
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                          ),
                          child: const Text(
                            "inviter vos amis                7points",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),

      ]
      )
    )
    ),
    );      
  }

}