import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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
    return ElevatedButton(
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
          padding: EdgeInsets.all(8),
          child: Image.asset(
            'assets/images/$dinosaur.png',
            fit: BoxFit.scaleDown,
          )),
    );
  }
}
