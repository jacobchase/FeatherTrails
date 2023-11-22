import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FeatherTrails Privacy Policy'),
        backgroundColor: Color(0xFFC93C13),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Effective Date: [11/20/2023]',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              '1. Introduction',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Welcome to FeatherTrails ("we," "us," or "our"). This Privacy Policy outlines how we collect, use, disclose, and protect the personal information you provide when you use our [website/mobile app/services] (collectively referred to as the "Service").',
            ),
            SizedBox(height: 16.0),
            Text(
              '2. Information',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'a. Personal Information: We may collect personal information, such as your name, email address, phone number, and any other information you provide when you interact with our Service.',
            ),
            SizedBox(height: 8.0),
            Text(
              'b. Automatically Collected Information: We may automatically collect information about your device, browser type, IP address, and usage patterns when you use our Service.',
            ),
            SizedBox(height: 16.0),
            Text(
              '3. How We Use Your Information',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'We may use your information for the following purposes:',
            ),
            SizedBox(height: 8.0),
            Text(
              'a. To provide and maintain the Service.',
            ),
            SizedBox(height: 8.0),
            Text(
              'b. To improve, personalize, and enhance your experience.',
            ),
            SizedBox(height: 8.0),
            Text(
              'c. To communicate with you, including responding to your inquiries and providing customer support.',
            ),
            SizedBox(height: 8.0),
            Text(
              'd. To send you updates, newsletters, and promotional materials.',
            ),
            SizedBox(height: 16.0),
            Text(
              '4. Cookies and Tracking Technologies',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'We may use cookies and similar tracking technologies to collect information about your browsing behavior and preferences. You can control the use of cookies through your browser settings.',
            ),
            SizedBox(height: 16.0),
            Text(
              '5. Disclosure of Your Information',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'We may share your information with third parties under the following circumstances:',
            ),
            SizedBox(height: 8.0),
            Text(
              'a. With your consent.',
            ),
            SizedBox(height: 8.0),
            Text(
              'b. To comply with legal obligations.',
            ),
            SizedBox(height: 8.0),
            Text(
              'c. To protect and defend our rights and property.',
            ),
            SizedBox(height: 8.0),
            Text(
              'd. In connection with a merger, acquisition, or sale of all or a portion of our assets.',
            ),
            SizedBox(height: 16.0),
            Text(
              '6. Security',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'We take reasonable measures to protect your personal information from unauthorized access and disclosure. However, no method of transmission over the internet or electronic storage is completely secure.',
            ),
            SizedBox(height: 16.0),
            Text(
              '7. Your Choices',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'You have the right to access, correct, or delete your personal information. You may also opt-out of receiving promotional communications from us.',
            ),
            SizedBox(height: 16.0),
            Text(
              '8. Changes to This Privacy Policy',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'We reserve the right to update this Privacy Policy at any time. We will notify you of any changes by posting the new Privacy Policy on this page.',
            ),
            SizedBox(height: 16.0),
            Text(
              '9. Contact Us',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'If you have any questions or concerns about this Privacy Policy, please contact us at [helpMe@feathertrails.com].',
            ),
            SizedBox(height: 16.0),
            Text(
              'By using our Service, you agree to the terms of this Privacy Policy.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              'FeatherTrails',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PrivacyPolicyPage(),
  ));
}
