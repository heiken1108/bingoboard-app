import 'package:app/models/invitation_model.dart';
import 'package:app/styles/app_colors.dart';
import 'package:flutter/material.dart';

class InvitationBox extends StatelessWidget {
  final InvitationModel invitation;

  final Function onAccept;
  final Function onDecline;

  InvitationBox({
    required this.invitation,
    required this.onAccept,
    required this.onDecline,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(invitation.name), // Unique key for each Dismissible widget
      direction: DismissDirection.horizontal, // Allow horizontal swipe
      background: Container(
        color: Colors.green,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Icon(Icons.check, color: Colors.white),
      ),
      secondaryBackground: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Icon(Icons.close, color: Colors.white),
      ),
      onDismissed: (direction) {
        if (direction == DismissDirection.startToEnd) {
          onAccept(); // Call accept function
        } else if (direction == DismissDirection.endToStart) {
          onDecline(); // Call decline function
        }
      },
      child: Card(
        elevation: 4, // Card shadow for better visibility
        margin: EdgeInsets.all(4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Rounded corners
        ),
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
                    invitation.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text("${invitation.mode} by ${invitation.admin}",
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
                      Text('${invitation.playersAmount}'),
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
                      Text('${invitation.challengesAmount}'),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      onAccept();
                    },
                    child: Text(
                      'Accept',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.secondaryColor,
                      iconColor: Colors.white, // Red color for decline button
                    ),
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
