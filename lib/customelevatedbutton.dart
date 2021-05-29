import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

// Construct the customElevatedButton tha is used on home to print dinosaurs options

// Instantiate and set configuration for play sounds
var cache = AudioCache();
var player = AudioPlayer();

void playSound(String soundToPlay) async {
  player = await cache.play('sounds/$soundToPlay.mp3');
}

class customElevatedButton extends StatelessWidget {
  final dinosaur;

  customElevatedButton({required String this.dinosaur});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: ElevatedButton(
          style: ButtonStyle(
              shadowColor: MaterialStateProperty.all<Color>(Colors.black),
              elevation: MaterialStateProperty.all<double>(10.0),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
          onPressed: () {
            player.stop(); // Stop the sound before play next
            playSound(dinosaur);
          },
          child: Container(
              child: Image.asset(
            'assets/images/$dinosaur.png',
            fit: BoxFit.fill,
          )),
        ),
      ),
    );
  }
}
