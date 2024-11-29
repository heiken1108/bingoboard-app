//Screen for all active games for a user. Works as the home screen
import 'package:app/styles/app_colors.dart';
import 'package:app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class MyGamesScreen extends StatelessWidget {
  const MyGamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(title: 'My Games'),
      body: Center(
        child: Text('Here are my active games'),
      ),
    );
  }
}
