// Screen for an active game
import 'package:app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(title: 'Game'),
      body: Center(
        child: Text('Your are not currently playing a game'),
      ),
    );
  }
}
