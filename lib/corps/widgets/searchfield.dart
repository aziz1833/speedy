import 'package:flutter/material.dart';

class Searchtextfield extends StatelessWidget {
  const Searchtextfield({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search,
        color:Colors.grey,
        size: 26,
        ),
        suffixIcon: const Icon(Icons.mic,size: 26,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: "recherchez votre jeu",
        labelStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ) ,
        isDense: true
      ),
    );
  }
}