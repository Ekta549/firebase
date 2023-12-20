import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //FirebaseApi().initNotifications();
  // Initialize Firebase Messaging

  runApp(const MyApp());
}

void handleForegroundMessage(RemoteMessage message) {
  // Handle the foreground message here
  print("Handling foreground message: $message");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Messaging Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Firebase Messaging Example'),
        ),
        body: const Center(
          child: Text('Your App Content'),
        ),
      ),
    );
  }
}
