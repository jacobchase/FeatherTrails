import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  bool receiveNotifications = true;
  bool showPreview = true;
  int notificationInterval = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications Settings'),
        backgroundColor:
            const Color(0xFFC93C13), // Set the background color of the AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchListTile(
              title: const Text('Receive Notifications'),
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
              title: const Text('Show Notification Preview'),
              inactiveThumbColor: const Color(0xFFB2B7AE),
              inactiveTrackColor: const Color(0xFF58636A),
              value: showPreview,
              onChanged: (value) {
                setState(() {
                  showPreview = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            ListTile(
              title: const Text('Notification Interval (minutes)'),
              subtitle: Slider(
                value: notificationInterval.toDouble(),
                min: 1,
                max: 60,
                onChanged: (value) {
                  setState(() {
                    notificationInterval = value.toInt();
                  });
                },
              ),
              trailing: Text('$notificationInterval min'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: NotificationsPage(),
  ));
}
