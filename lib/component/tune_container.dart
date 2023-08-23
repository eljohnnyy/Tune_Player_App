import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';

class tune_container extends StatelessWidget {
  const tune_container({required this.tune,
    super.key,
  });
final TuneModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          
          final player=AudioPlayer();
          player.play(AssetSource(tune.sound));
        },
       
          child: Container(
           
            color: tune.color,
            
            
          ),
        ),
    );
   
  }
}