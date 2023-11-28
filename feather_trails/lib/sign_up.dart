import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome, ',
              style: TextStyle(
                fontSize: 40.0,
                fontFamily: 'Quicksand',
              ),
            ),
            RichText(
              text: const TextSpan(
                text: 'Traveler',
                style: TextStyle(
                  color: Color(0xFFDE7728),
                  fontSize: 40.0,
                  fontFamily: 'Quicksand',
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter your username',
                  contentPadding: EdgeInsets.only(bottom: 8.0),
                  prefixIcon: Icon(Icons.person, color: Color(0xFF58636A)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF58636A)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF58636A)),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  contentPadding: EdgeInsets.only(bottom: 8.0),
                  prefixIcon: Icon(Icons.email, color: Color(0xFF58636A)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF58636A)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF58636A)),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  contentPadding: EdgeInsets.only(bottom: 8.0),
                  prefixIcon: Icon(Icons.key, color: Color(0xFF58636A)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF58636A)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF58636A)),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Re-enter Password',
                  hintText: 'Re-enter your password',
                  contentPadding: EdgeInsets.only(bottom: 8.0),
                  prefixIcon: Icon(Icons.key, color: Color(0xFF58636A)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF58636A)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF58636A)),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Login');
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFC93C13)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                minimumSize: MaterialStateProperty.all(const Size(360, 48)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              child: const Text('Sign up'),
            ),
            const SizedBox(height: 50.0),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Image.asset(
                'assets/images/Feather_Trails_Logo_Trans.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
