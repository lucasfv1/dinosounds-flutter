import 'package:flutter/material.dart';
import 'customelevatedbutton.dart';

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
          style: TextStyle(fontFamily: 'Favorita', fontSize: 50.0),
        ),
      ),

      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/junglebackground.jpg'),
          fit: BoxFit.fill,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                padding: EdgeInsets.all(25),
                mainAxisSpacing: 50,
                crossAxisSpacing: 40,
                children: [
                  customElevatedButton(dinosaur: 'dino1'),
                  customElevatedButton(dinosaur: 'dino2'),
                  customElevatedButton(dinosaur: 'dino3'),
                  customElevatedButton(dinosaur: 'dino4'),
                  customElevatedButton(dinosaur: 'dino5'),
                  customElevatedButton(dinosaur: 'dino6'),
                  customElevatedButton(dinosaur: 'dino7'),
                  customElevatedButton(dinosaur: 'dino8'),
                ],
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
