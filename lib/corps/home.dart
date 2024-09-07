import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:speedy/corps/widgets/searchfield.dart';

import 'widgets/circlebutton.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: const [
             appBar(),
             body(),
          ],
        ),
      ),
    );
  }
}
class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding:const EdgeInsets.only(top: 10,left: 20,right: 20),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("explorer les jeux",
            ),
            TextButton(onPressed: () {},
            child: const Text(
              "voir tous",
              
              ),
            )

          ],)
        
        ),

      ],
    );
  }
}
class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft:Radius.circular(20) ,
          bottomRight: Radius.circular(20)
          ),
          gradient: LinearGradient(colors:[
            Colors.blueAccent,
            Colors.blueAccent
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          )
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("bonjour utilisateur",
              style: Theme.of(context).textTheme.titleLarge,
              ),
              Circlebutton(
                icon:Icons.notifications,
              onPressed:(){},
              )

            ],
          ),
          const SizedBox(height: 20),
          const Searchtextfield(),
        ],
      ),
    );
    }

}