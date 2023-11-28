import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool receiveNotifications = true;
  bool showPreview = true;
  int notificationInterval = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings',
          style:  TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Quicksand',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchListTile(
              title: const Text('Clear Data',
                style:  TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Quicksand',
                ),),
              inactiveThumbColor: const Color(0xFFB2B7AE),
              inactiveTrackColor: const Color(0xFF58636A),
              value: receiveNotifications,
              onChanged: (value) {
                setState(() {
                  receiveNotifications = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            SwitchListTile(
              title: const Text('Clear Cache',
                style:  TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Quicksand',
                ),),
              inactiveThumbColor: const Color(0xFFB2B7AE),
              inactiveTrackColor: const Color(0xFF58636A),
              value: showPreview,
              onChanged: (value) {
                setState(() {
                  showPreview = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SettingsPage(),
  ));
}
