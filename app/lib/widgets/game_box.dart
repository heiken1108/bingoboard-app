import 'package:app/models/game_model.dart';
import 'package:flutter/material.dart';

class GameBox extends StatelessWidget {
  final GameModel game;
  final Function onTap;

  const GameBox({super.key, required this.game, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Card shadow for better visibility
      margin: EdgeInsets.all(4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
      child: InkWell(
        onTap: () {
          // Define your action here
          print("Card tapped! ${game.id}");
        },
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text to the left
                children: [
                  // Top-left name
                  Text(
                    game.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text("${game.mode} by ${game.admin}",
                      style: TextStyle(fontSize: 14)),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      // Person icon with smaller size and padding inside the box
                      Padding(
                        padding: const EdgeInsets.all(
                            2.0), // Padding inside the icon box
                        child: Icon(
                          Icons.person,
                          size: 18, // Smaller icon size
                        ),
                      ),
                      Text('${game.playersAmount}'),
                      SizedBox(width: 8),

                      // Task icon with smaller size and padding inside the box
                      Padding(
                        padding: const EdgeInsets.all(
                            2.0), // Padding inside the icon box
                        child: Icon(
                          Icons.task_alt_outlined,
                          size: 18, // Smaller icon size
                        ),
                      ),
                      Text('${game.challengesAmount}'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
