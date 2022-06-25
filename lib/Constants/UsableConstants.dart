import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const BoxDecoration lgBackground = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: <Color>[
      Color.fromARGB(255, 134, 209, 178),
      Color.fromARGB(255, 181, 235, 212),
      Color.fromARGB(255, 181, 235, 212),
      Color.fromARGB(255, 236, 245, 241),
      Color.fromARGB(255, 218, 235, 227),
      Color.fromARGB(255, 181, 235, 212),
      Color.fromARGB(255, 181, 235, 212),
      Color.fromARGB(255, 134, 209, 178),
    ],
    tileMode: TileMode.clamp,
  ),
);

TextStyle lgStyle =
    TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black);
TextStyle smStyle = TextStyle(fontSize: 14, color: Colors.black);

InputDecoration fieldDecor(label) => InputDecoration(
      hintStyle: TextStyle(fontSize: 12),
      filled: true,
      fillColor: Colors.white,
      hintText: label,
      contentPadding: const EdgeInsets.all(22),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(12.7),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(12.7),
      ),
    );
const TextStyle smfont = TextStyle(fontSize: 12, color: Colors.black);
