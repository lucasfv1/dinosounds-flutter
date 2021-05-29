import 'package:flutter/material.dart';

// Set up alert dialog for info - It is called on home
AlertDialog infoAlert = AlertDialog(
  content: Container(
      //padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        "Informações",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
      ),
      Text(
        "\nPara utilizar o app basta clicar sobre as imagens dos dinossauros e esperar o som ser reproduzido",
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
      Text(
        "\nCréditos",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
      ),
      Text(
        "\nImagens: vecteezy.com",
        style: TextStyle(fontSize: 20),
      ),
      Text(
        "Sons: freesound.org",
        style: TextStyle(fontSize: 20),
      ),
    ],
  )),
  elevation: 25,
  backgroundColor: Colors.white,
);
