import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XyloPhone());
}

class XyloPhone extends StatefulWidget {
  const XyloPhone({Key? key}) : super(key: key);

  @override
  State<XyloPhone> createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {
  Expanded repeatUi({Color? color, int? soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color, // Text Color
        ),
        onPressed: () => setState(() {
          final player = AudioPlayer();

          player.play(AssetSource('assets_note$soundNumber.wav'));
        }),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Play with me'),
          backgroundColor: Colors.black,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          repeatUi(color: Colors.red, soundNumber: 1),
          repeatUi(color: Colors.yellow, soundNumber: 2),
          repeatUi(color: Colors.white, soundNumber: 3),
          repeatUi(color: Colors.green, soundNumber: 4),
          repeatUi(color: Colors.orange, soundNumber: 5),
          repeatUi(color: Colors.pink, soundNumber: 6),
        ]),
      ),
    );
  }
}
