import 'package:appjam/chat/chat.dart';
import 'package:appjam/profile/home_screen.dart';
import 'package:appjam/news/news.dart';
import 'package:appjam/ranking/ranking.dart';
import 'package:appjam/screen/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Courses"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Student 1'),
              accountEmail: Text('student_1@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    "assets/images/logo.png",
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage("assets/images/logo.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text("Profile"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.compare_outlined),
              title: Text("Ranking"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Ranking()));
              },
            ),
            ListTile(
              leading: Icon(Icons.newspaper_outlined),
              title: Text("News"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => News()));
              },
            ),
            ListTile(
              leading: Icon(Icons.class_outlined),
              title: Text("Courses"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Courses()));
              },
            ),
            ListTile(
              leading: Icon(Icons.chat_bubble_outline),
              title: Text("Chat"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Chat()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Find"),
          onPressed: () {},
        ),
      ),
    );
  }
}
