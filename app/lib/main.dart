import 'package:app/screens/game/game_screen.dart';
import 'package:app/screens/invitations/invitations_screen.dart';
import 'package:app/screens/my_games/my_games_screen.dart';
import 'package:app/screens/new_game/new_game_screen.dart';
import 'package:app/screens/profile/profile_screen.dart';
import 'package:app/widgets/bottom_navbar_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    MyGamesScreen(),
    NewGameScreen(),
    InvitationsScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: 'Poppins',
            scaffoldBackgroundColor: const Color(0xff101a23)),
        home: Scaffold(
          body: _pages[_selectedIndex],
          bottomNavigationBar: BottomNavBar(
            currentIndex: _selectedIndex,
            onItemTapped: _onItemTapped,
          ),
        ));
  }
}
