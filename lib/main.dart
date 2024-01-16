import 'package:untitled3/screens/chats.dart';
import 'package:untitled3/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const LoginChatApp());

class LoginChatApp extends StatelessWidget {
  const LoginChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login & Chat',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: const Color(0xFFE78230),
      ),
      home: LoginPage(),
      routes: {
        ChatPage.routeName: (ctx) => const ChatPage(),
      },
    );
  }
}
