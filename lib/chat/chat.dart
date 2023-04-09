import 'package:appjam/courses/courses.dart';
import 'package:appjam/screen/drawer.dart';
import 'package:appjam/profile/home_screen.dart';
import 'package:appjam/news/news.dart';
import 'package:appjam/ranking/ranking.dart';
import 'package:appjam/screen/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: ElevatedButton(
          child: Text("Send"),
          onPressed: () {},
        ),
      ),
    );
  }
}
