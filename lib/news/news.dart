import 'package:appjam/chat/chat.dart';
import 'package:appjam/courses/courses.dart';
import 'package:appjam/news/screens/home_screen.dart';
import 'package:appjam/screen/drawer.dart';
import 'package:appjam/profile/home_screen.dart';
import 'package:appjam/ranking/ranking.dart';
import 'package:appjam/screen/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewsScreen(),
    );
  }
}
