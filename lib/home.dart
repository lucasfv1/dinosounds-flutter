import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customelevatedbutton.dart';
import 'infoAlert.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0071DE),
        centerTitle: true,
        title: Text(
          "DinoSounds",
          style: TextStyle(fontFamily: 'Favorita'),
        ),
        // Show info button on appbar
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 55),
            child: IconButton(
              icon: Icon(Icons.info, color: Colors.white),
              onPressed: () {
                // If info button press call infoAlert
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      Future.delayed(Duration(seconds: 10), () {
                        Navigator.of(context).pop(true);
                      });
                      return infoAlert;
                    });
              },
            ),
          )
        ],
      ),

      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          // Print background image
          image: AssetImage('assets/images/junglebackground.jpg'),
          fit: BoxFit.fill,
        )),
        // Print buttons with dinosaurs images
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    customElevatedButton(dinosaur: 'dino1'),
                    customElevatedButton(dinosaur: 'dino2'),
                    customElevatedButton(dinosaur: 'dino3'),
                    customElevatedButton(dinosaur: 'dino4'),
                  ],
                ),
                Row(
                  children: [
                    customElevatedButton(dinosaur: 'dino5'),
                    customElevatedButton(dinosaur: 'dino6'),
                    customElevatedButton(dinosaur: 'dino7'),
                    customElevatedButton(dinosaur: 'dino8'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
