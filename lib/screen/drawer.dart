import 'package:appjam/courses/courses.dart';
import 'package:appjam/chat/chat.dart';
import 'package:appjam/profile/home_screen.dart';
import 'package:appjam/news/news.dart';
import 'package:appjam/ranking/ranking.dart';
import 'package:appjam/screen/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Student 1'),
            accountEmail: Text('student_1@gmail.com'),
            currentAccountPicture: CircleAvatar(
              maxRadius: 75,
              minRadius: 5,
              backgroundColor: Colors.lime,
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
                fit: BoxFit.fill,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.newspaper_outlined),
              title: Text("News"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => News()));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.compare_outlined),
              title: Text("Ranking"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Ranking()));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.class_outlined),
              title: Text("Courses"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Courses()));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.chat_bubble_outline),
              title: Text("Chat"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Chat()));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.chat_bubble_outline),
              title: Text("Q & A"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Chat())); //Q&A olarak degisitirilecek
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.person_outline),
              title: Text("Profile"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                FirebaseAuth.instance.signOut().then((value) {
                  debugPrint("Signed Out");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInScreen()));
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
