//Screen for the invitations

import 'package:app/styles/app_colors.dart';
import 'package:app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class InvitationsScreen extends StatelessWidget {
  const InvitationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(title: 'My Invitations'),
      body: Center(
        child: Text('Here are my invitations'),
      ),
    );
  }
}
