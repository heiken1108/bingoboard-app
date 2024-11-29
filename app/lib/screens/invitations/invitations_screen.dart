//Screen for the invitations

import 'package:app/models/invitation_model.dart';
import 'package:app/widgets/appbar_widget.dart';
import 'package:app/widgets/invitations_list.dart';
import 'package:flutter/material.dart';

class InvitationsScreen extends StatelessWidget {
  InvitationsScreen({super.key});

  List<InvitationModel> invitations = [];

  void _getInvitations() {
    invitations = InvitationModel.getInvitations();
  }

  @override
  Widget build(BuildContext context) {
    _getInvitations();
    return Scaffold(
        appBar: const AppBarWidget(title: 'My Invitations'),
        body: InvitationsList(invitations: invitations));
  }
}
