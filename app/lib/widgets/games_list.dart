import 'package:app/models/game_model.dart';
import 'package:app/widgets/game_box.dart';
import 'package:flutter/material.dart';

class GamesList extends StatelessWidget {
  final List<GameModel> games;

  const GamesList({Key? key, required this.games}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: games.length,
      scrollDirection: Axis.vertical,
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 10,
        );
      },
      padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
      itemBuilder: (context, index) {
        return GameBox(
          game: games[index],
          onTap: () {
            // Simple onTap function
            print("Accepted: ${games[index].name}");
          },
        );
      },
    );
  }
}
