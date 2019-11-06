import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';


class AudioPlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Audio PLayer"),
          backgroundColor: Colors.black,
        ),
        body: AudioPlayS(),
      ),
    );

  }
}

class AudioPlayS extends StatefulWidget {
  @override
  _AudioPlaySState createState() => _AudioPlaySState();
}

class _AudioPlaySState extends State<AudioPlayS> {
  @override
  Widget build(BuildContext context) {

    void playSound(int number) {
      final player = AudioCache();
      player.play('note$number.wav');
    }

    Expanded buildKey({Color color,int number})
    {
      return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(number);
          },
          child: Text(''),
        ),
      );
    }

    return SafeArea(
        child: Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        buildKey(color: Colors.red,number: 1),
        buildKey(color: Colors.amber,number: 2),
        buildKey(color: Colors.white,number: 3),
        buildKey(color: Colors.teal,number: 4),
        buildKey(color: Colors.deepOrange,number: 5),
        buildKey(color: Colors.cyanAccent,number: 6),
        buildKey(color: Colors.deepPurpleAccent,number: 7),
      ],
    ));
  }
}
