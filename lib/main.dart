import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  final player = AudioCache(fixedPlayer: AudioPlayer());
  String temp;
  void fun(music) {
    //player.clearCache();
    //player.clear(music);
    player.play(music);
    //player.clear(temp);
  }

  Widget buildWidgets(Color colorName, String music, String name) {
    return Expanded(
      child: FlatButton(
        color: colorName,
        onPressed: () {
          temp = music;
          fun(music);
        },
        child: Text(
          ("$name"),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Popular quotes from LOTR"),
          ),
          backgroundColor: Colors.teal,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            //mainAxisSize: MainAxisSize.max,

            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildWidgets(Colors.red, 'Not all tears are an evil.mp3',
                  'Not all tears are an evil'),
              buildWidgets(Colors.orange, 'Many that live deserve death.mp3',
                  'Many that live deserve death'),
              buildWidgets(Colors.yellow, 'All You Have To Decide.mp3',
                  'All You Have To Decide'),
              buildWidgets(
                  Colors.green,
                  'Famous Speeches Aragorn at the Black Gate.mp3',
                  'Aragorn Speech at the Black Gate'),
              buildWidgets(
                  Colors.blue,
                  'The Lord of the Rings - Samwise the Brave - I Cant do this Sam.mp3',
                  'Samwise the Brave - I Cant do this Sam'),
              buildWidgets(
                  Colors.indigo, 'turn of the tide.mp3', 'turn of the tide'),
              buildWidgets(
                  Colors.deepPurple[900],
                  'The Lord of the Rings - The Journey Does Not End Here (HD).mp3',
                  'The Journey Does Not End Here'),
            ],
          ),
        ),
      ),
    );
  }
}
