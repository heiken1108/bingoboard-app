import 'package:app/models/invitation_model.dart';
import 'package:app/widgets/invitation_box.dart';
import 'package:flutter/material.dart';

class InvitationsList extends StatelessWidget {
  final List<InvitationModel> invitations;

  const InvitationsList({super.key, required this.invitations});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: invitations.length,
      scrollDirection: Axis.vertical,
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 10,
        );
      },
      padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
      itemBuilder: (context, index) {
        return InvitationBox(
          invitation: invitations[index],
          onAccept: () {
            // Simple onAccept function
            print("Accepted: ${invitations[index].name}");
          },
          onDecline: () {
            // Simple onDecline function
            print("Declined: ${invitations[index].name}");
          },
        );
      },
    );
  }
}
