import 'package:app/screens/new_game/invitation_input.dart';
import 'package:app/screens/new_game/pick_mode_scroller.dart';
import 'package:app/styles/app_colors.dart';
import 'package:app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'title_input.dart';

class NewGameScreen extends StatelessWidget {
  const NewGameScreen({super.key});

  void onModeChanged(String mode) {
    print('Selected mode: $mode');
  }

  void onTitleChanged(String title) {
    print('Title changed: $title');
  }

  void onInvitationsChanged(List<String> friends) {
    print('Friends list changed: $friends');
  }

  void onCreateGame() {
    print('Create game pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Create a new game'),
      body: SafeArea(
        // Ensures content isn't hidden behind system UI
        child: SingleChildScrollView(
          // Allows the content to be scrollable when keyboard appears
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                PickModeScroller(
                  modes: const ['24 timers', 'Klassisk bingobrett', 'Wateky'],
                  onModeChanged: onModeChanged,
                ),
                TitleInput(onTitleChanged: onTitleChanged),
                InvitationInput(onInvitationsChanged: onInvitationsChanged),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ElevatedButton(
                    onPressed: onCreateGame,
                    child: const Text('Create game'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.triaryColor,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
