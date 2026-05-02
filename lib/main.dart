import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  // ফ্লাটার ইঞ্জিন এবং ফায়ারবেসকে একসাথে শুরু করার জন্য এই লাইনটি জরুরি
  WidgetsFlutterBinding.ensureInitialized();
  
  // আপনার আপলোড করা google-services.json ফাইলটি ব্যবহার করে ফায়ারবেস কানেক্ট হবে
  await Firebase.initializeApp();
  
  runApp(const MeetupApp());
}

class MeetupApp extends StatelessWidget {
  const MeetupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meetup',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const RegistrationPage(), // আমরা প্রথমে রেজিস্ট্রেশন পেজটি দেখাবো
    );
  }
}

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  // এখানে আমরা পরে ফায়ারবেস দিয়ে ডাটা সেভ করার কোড লিখবো
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0056D2), // আপনার সেই নীল রঙের ব্যাকগ্রাউন্ড
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Create Account',
                style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Email',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Password',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  // এখানে ফায়ারবেস রেজিস্ট্রেশন ফাংশন কল হবে
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
