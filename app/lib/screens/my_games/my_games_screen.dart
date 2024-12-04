//Screen for the invitations

import 'package:app/models/game_model.dart';
import 'package:app/widgets/appbar_widget.dart';
import 'package:app/widgets/games_list.dart';
import 'package:flutter/material.dart';

class MyGamesScreen extends StatelessWidget {
  MyGamesScreen({super.key});

  List<GameModel> games = [];

  void _getGames() {
    games = GameModel.getGames();
  }

  @override
  Widget build(BuildContext context) {
    _getGames();
    return Scaffold(
        appBar: const AppBarWidget(title: 'My Games'),
        body: GamesList(games: games));
  }
}
