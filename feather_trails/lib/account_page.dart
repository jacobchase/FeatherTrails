import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Account Page',
      home: AccountPage(),
    );
  }
}

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String oldPassword = '';
  String newPassword = '';
  String confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account',
          style: TextStyle(fontFamily: 'Quicksand', fontWeight: FontWeight.bold,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Account Information',
              style: TextStyle(fontSize: 20,fontFamily: 'Quicksand', fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text('Username: user0000', style: TextStyle(fontFamily: 'Quicksand', fontWeight: FontWeight.w500),),
            const Text('Email: user0000@gmail.com', style: TextStyle(fontFamily: 'Quicksand', fontWeight: FontWeight.w500),),
            const SizedBox(height: 24),
            const Text(
              'Change Password',
              style: TextStyle(fontSize: 18,fontFamily: 'Quicksand', fontWeight: FontWeight.bold),
            ),
            TextField(
              style: const TextStyle(
                  fontFamily: 'Quicksand', fontWeight: FontWeight.w500
              ),
              decoration: const InputDecoration(
                labelText: 'Old Password',
                labelStyle: TextStyle(fontFamily: 'Quicksand', fontWeight: FontWeight.w500),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFC93C13)),
                ),
              ),
              obscureText: true,
              onChanged: (value) {
                setState(() {
                  oldPassword = value;
                });
              },
            ),
            TextField(
              style: TextStyle(
                fontFamily: 'Quicksand',
              ),
              decoration: const InputDecoration(
                labelText: 'New Password',
                labelStyle: TextStyle(fontFamily: 'Quicksand', fontWeight: FontWeight.w500),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFC93C13)),
                ),
              ),
              obscureText: true,
              onChanged: (value) {
                setState(() {
                  newPassword = value;
                });
              },
            ),
            TextField(
              style: TextStyle(
                fontFamily: 'Quicksand',
              ),
              decoration: const InputDecoration(
                labelText: 'Confirm New Password',
                labelStyle: TextStyle(fontFamily: 'Quicksand', fontWeight: FontWeight.w500),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFC93C13)),
                ),
              ),
              obscureText: true,
              onChanged: (value) {
                setState(() {
                  confirmPassword = value;
                });
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Add logic to change the password here
                if (newPassword == confirmPassword) {
                  // Passwords match, proceed with changing the password
                  // You might want to implement actual password change logic here
                  print('Password changed successfully');
                } else {
                  // Passwords don't match, show an error message
                  print('New passwords do not match');
                }
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFFC93C13)),
                minimumSize: MaterialStateProperty.all(
                  const Size(180, 48),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8.0), // Adjust the value as needed
                  ),
                ),
              ),
              child: const Text(
                'Change Password',
                style: TextStyle(color: Colors.white, fontFamily: 'Quicksand'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
