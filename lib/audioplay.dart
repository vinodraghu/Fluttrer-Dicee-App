import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


class AudioPlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Ball"),
      ),
      body: AudioPlayS(),

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
    return SafeArea();
  }
}
