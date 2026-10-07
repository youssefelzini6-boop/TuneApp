import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
 const TuneModel({required this.color, required this.sound});
  final Color color;
  final String sound;
  Future<void> playsound() async {
    final player = AudioPlayer();
    await player.play(AssetSource(sound)); // will immediately start playing
  }
}
