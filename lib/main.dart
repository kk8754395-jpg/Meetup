import 'package:flutter/material.dart';

void main() => runApp(MeetupApp());

class MeetupApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meetup', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
        backgroundColor: Colors.white,
        elevation: 1,
        actions: [
          IconButton(icon: Icon(Icons.video_call, color: Colors.black), onPressed: () {}),
          IconButton(icon: Icon(Icons.chat_bubble_outline, color: Colors.black), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // প্রোফাইল ও কভার সেকশন (নমুনা)
            Container(
              height: 200,
              color: Colors.blue[100],
              child: Center(child: Icon(Icons.camera_alt, size: 50, color: Colors.blue)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(radius: 30, backgroundColor: Colors.blue),
                  SizedBox(width: 10),
                  Text('Kishore', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Divider(),
            // পোস্ট ফিড (নমুনা)
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.grey),
              title: Text('New Video Post'),
              subtitle: Text('2 minutes ago'),
            ),
            Container(height: 250, color: Colors.grey[200], child: Center(child: Icon(Icons.play_circle_fill, size: 60))),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Friends'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Alerts'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        ],
      ),
    );
  }
}
