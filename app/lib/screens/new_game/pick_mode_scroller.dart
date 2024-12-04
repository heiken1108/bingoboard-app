import 'dart:async'; // Required for Timer
import 'package:app/screens/new_game/section_title.dart';
import 'package:app/styles/app_colors.dart';
import 'package:flutter/material.dart';

class PickModeScroller extends StatefulWidget {
  final List<String> modes;
  final Function(String) onModeChanged;

  const PickModeScroller({
    Key? key,
    required this.modes,
    required this.onModeChanged,
  }) : super(key: key);

  @override
  State<PickModeScroller> createState() => _PickModeScrollerState();
}

class _PickModeScrollerState extends State<PickModeScroller> {
  late int selectedIndex;
  Timer? _debounceTimer;
  bool isScrolling = false;

  @override
  void initState() {
    super.initState();
    selectedIndex = 0;
  }

  int getWrappedIndex(int index) {
    return index % widget.modes.length; // Wrap the index around the list
  }

  void _onSelectedItemChanged(int index) {
    setState(() {
      isScrolling = true; // Start scrolling
    });

    _debounceTimer?.cancel();

    _debounceTimer = Timer(const Duration(milliseconds: 750), () {
      setState(() {
        selectedIndex = index % widget.modes.length; // Update the wrapped index
        isScrolling = false;
      });
      // Notify the parent widget only after the debounce duration
      widget.onModeChanged(widget.modes[getWrappedIndex(index)]);
    });
  }

  @override
  void dispose() {
    _debounceTimer?.cancel(); // Clean up the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SectionTitle(title: 'Pick mode'),
        SizedBox(
          height: 3 * 50, // Height to show only three items (3 * itemExtent)
          child: ListWheelScrollView.useDelegate(
            itemExtent: 50,
            diameterRatio: 2.0,
            physics: const FixedExtentScrollPhysics(),
            onSelectedItemChanged: _onSelectedItemChanged,
            childDelegate: ListWheelChildLoopingListDelegate(
              children: widget.modes.map((mode) {
                final isSelected =
                    !isScrolling && widget.modes.indexOf(mode) == selectedIndex;
                return Center(
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.secondaryColor
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      mode,
                      style: TextStyle(
                        fontSize:
                            isSelected ? 20 : 16, // Highlight the selected item
                        color: isSelected
                            ? Colors.white
                            : Colors.grey, // Text color
                        fontWeight:
                            isSelected ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
