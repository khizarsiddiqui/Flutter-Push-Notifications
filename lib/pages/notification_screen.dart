import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});
  static const route = '/notification-screen';

  @override
  Widget build(BuildContext context) {
    // RemoteMessage message = new RemoteMessage();
    // final message = ModalRoute
    //     .of(context)!
    //     .settings
    //     .arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Push Notifications"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("NotificationScreen"),
            // Text('${message.notification?.title}'),
            // Text('Body: ${message.notification?.body}'),
            // Text('Payload: ${message.data}')
          ],
        ),
      ),
    );
  }
}
