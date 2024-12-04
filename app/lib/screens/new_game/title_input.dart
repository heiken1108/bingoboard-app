import 'package:app/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'section_title.dart';

class TitleInput extends StatefulWidget {
  final Function(String) onTitleChanged;
  const TitleInput({super.key, required this.onTitleChanged});

  @override
  State<TitleInput> createState() => _TitleInputState();
}

class _TitleInputState extends State<TitleInput> {
  final TextEditingController _titleController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionTitle(title: 'Game Title'),
        TextField(
          controller: _titleController,
          onChanged: widget.onTitleChanged,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Enter a title for your game',
            hintStyle: TextStyle(color: Colors.white60),
            filled: true,
            fillColor: AppColors.secondaryColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  BorderSide(color: Colors.white), // Set border color to white
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                  color: Colors.white), // Set focused border color to white
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
