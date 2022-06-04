import 'package:flutter/material.dart';

const mDark=Color(0xff2b2b2b);
TextStyle bold24Roboto = const TextStyle(
  color: Colors.white,
  fontSize: 24,
  fontWeight: FontWeight.bold,
);

 Widget cContainer(){
  return Container( // grey box
    width: 320,
    height: 240,
    color: Colors.grey[300],
    child: Center(
      child: Container( // red box
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0.0, 0.6),
            colors: <Color>[
              Color(0xffef5350),
              Color(0x00ef5350),
            ],
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Text(
          'Lorem ipsum',
          style: bold24Roboto,
        ),
      ),
    ),
  );
}
