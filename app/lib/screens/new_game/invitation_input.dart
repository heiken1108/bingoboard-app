import 'package:app/styles/app_colors.dart';
import 'package:flutter/material.dart';

import 'section_title.dart';

class InvitationInput extends StatefulWidget {
  final Function(List<String>) onInvitationsChanged;
  const InvitationInput({super.key, required this.onInvitationsChanged});

  @override
  State<InvitationInput> createState() => _InvitationInputState();
}

class _InvitationInputState extends State<InvitationInput> {
  final TextEditingController _inputController =
      TextEditingController(text: '');
  late List<String> _invitations;

  @override
  void initState() {
    super.initState();
    setState(() {
      _invitations = [];
    });
  }

  void _addPerson() {
    setState(() {
      _invitations.add(_inputController.text);
    });
    widget.onInvitationsChanged(_invitations);
    _inputController.clear();
  }

  bool validateInput(String input) {
    //Tom, rare tegn, mellomrom, allerede i lista
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionTitle(title: 'Add friends'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextField(
                controller: _inputController,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Enter friend\'s name',
                  hintStyle: const TextStyle(color: Colors.white60),
                  filled: true,
                  fillColor: AppColors.secondaryColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                        color: Colors.white), // Set border color to white
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                        color:
                            Colors.white), // Set focused border color to white
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: _addPerson,
              icon: const Icon(Icons.add),
              color: Colors.blue,
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          "Added: ${_invitations.join(', ')}",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
