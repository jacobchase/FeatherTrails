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
        title: const Text('Notifications Settings',
          style:  TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Quicksand',
          ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchListTile(
              title: const Text('Receive Notifications',
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
              title: const Text('Show Notification Preview',
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
            const SizedBox(height: 16.0),
            ListTile(
              title: const Text('Notification Interval (minutes)',
                style:  TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Quicksand',
                ),),
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
              trailing: Text('$notificationInterval min',
                style:  TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Quicksand',
                ),
              ),
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
