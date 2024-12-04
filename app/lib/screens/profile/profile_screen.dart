import 'package:app/services/local_storage/local_storage_service.dart';
import 'package:app/styles/app_colors.dart';
import 'package:app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late String originalName;
  final TextEditingController _nameController = TextEditingController();
  bool isChanged = false;
  bool isValidChange = false;

  final LocalStorageService _localStorageService = LocalStorageService();

  @override
  void initState() {
    super.initState();
    loadNameFromLocalStorage();
  }

  void loadNameFromLocalStorage() async {
    final name = await _localStorageService.getName();
    setState(() {
      originalName = name;
      _nameController.text = name;
    });
  }

  void validateChange(String input) {
    setState(() {
      isChanged = input != originalName;
      isValidChange = input.isNotEmpty;
    });
  }

  void confirmChange() {
    print('Confirmed press. Name: ${_nameController.text}');
    _localStorageService.saveName(_nameController.text);
    setState(() {
      originalName = _nameController.text;
      isChanged = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'My Profile'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            const CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.primaryColorLighter,
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Enter Name',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _nameController,
              onChanged: validateChange,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: '',
                hintStyle: TextStyle(color: Colors.white60),
                filled: true, // Enable background color
                fillColor: AppColors.secondaryColor, // Light blue background
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Optional rounded corners
                  borderSide: BorderSide.none, // Remove border lines
                ),
                suffixIcon: isChanged
                    ? Icon(
                        isValidChange ? Icons.check : Icons.close,
                        color: isValidChange ? Colors.green : Colors.red,
                      )
                    : null,
              ),
            ),
            SizedBox(height: 20),
            isChanged
                ? SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        onPressed: isValidChange ? confirmChange : null,
                        style: TextButton.styleFrom(
                            backgroundColor:
                                isValidChange ? Colors.blue : Colors.grey,
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 16)),
                        child: Text('Confirm change')),
                  )
                : SizedBox.shrink()
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}
