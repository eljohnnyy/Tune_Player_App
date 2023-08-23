import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';

import '../component/tune_container.dart';

class Tune extends StatelessWidget {
  Tune({super.key});
List<TuneModel>tunes=[TuneModel(color: Colors.red, sound: 'note1.wav'),
 TuneModel(color: Color(0xffF89800), sound: 'note2.wav'),
    TuneModel(color: Color(0xffFEEB3B), sound: 'note3.wav'),
    TuneModel(color: Color(0xff4CAF50), sound: 'note4.wav'),
    TuneModel(color: Color(0xff2F9688), sound: 'note5.wav'),
    TuneModel(color: Color(0xff2896F3), sound: 'note6.wav'),
    TuneModel(color: Color(0xff9C27B0), sound: 'note7.wav'),
    


];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff253238),
        title: Text('Flutter Tune',style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: tunes.map((e) =>tune_container(tune: e)).toList()
      ),
    );
    
  }
}

