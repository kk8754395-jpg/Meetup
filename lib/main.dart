import 'package:flutter/material.dart';

void main() => runApp(MeetupApp());

class MeetupApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meetup',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(), 
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Meetup-এ স্বাগতম', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blue)),
            SizedBox(height: 30),
            TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'আপনার নাম')),
            SizedBox(height: 15),
            TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'মোবাইল নম্বর'), keyboardType: TextInputType.phone),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text('একাউন্ট খুলুন'),
              style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meetup Feed')),
      body: Center(child: Text('স্বাগতম! আপনি সফলভাবে প্রবেশ করেছেন।')),
    );
  }
}
