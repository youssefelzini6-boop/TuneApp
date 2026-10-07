import 'package:flutter/material.dart';
import 'package:tunes_app/models/tune_model.dart';
import 'package:tunes_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
 const TuneView({super.key});

  final List<TuneModel> tuneColor = const [
    TuneModel(color: Colors.red, sound: 'note1.wav'),
   TuneModel(color:  Colors.orange, sound:'note2.wav' ),
    TuneModel(color: Colors.yellow, sound:' note3.wav'),
    TuneModel(color: Colors.green, sound: 'note4.wav'),
   TuneModel(color:  Colors.blueGrey, sound: 'note5.wav'),
    TuneModel(color: Colors.lightBlue, sound:'assets\note6.wav'),
    TuneModel(color: Colors.purple, sound: 'assets\note7.wav'),
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFF243139),
        title: Text('Flutter Tunes', style: TextStyle(color: Colors.white)),
      ),
      body: Column(children: tuneColor.map((e) => TuneItem(tune: e)).toList()),
    );
  }

  // List<Widget> getTuneItem() {
  //   List<TuneItem> items = [];
  //   for (var color in tuneColor) {
  //     items.add(TuneItem(color: color));
  //   }
  //   return items;
  // }
}
