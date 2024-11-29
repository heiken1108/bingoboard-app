import 'package:app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(title: 'My Profile'),
      body: Center(
        child: Text('This is my profile'),
      ),
    );
  }
}
