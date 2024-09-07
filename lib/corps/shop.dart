import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:speedy/corps/home.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
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
            const Text("explorer les articles",
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