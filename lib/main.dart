import 'package:fcmflutter/api/firebase_api.dart';
import 'package:fcmflutter/pages/notification_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyBh1j1cj7_iSUto2HznANIXRfEP54xOy18",
        appId: "1:857307782822:android:b91bd7532db6eb467c5e67",
        messagingSenderId: "857307782822",
        projectId: "push-notifications-4cce5"),
  );
  await FirebaseApi().initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: NotificationScreen(),
    );
  }
}
