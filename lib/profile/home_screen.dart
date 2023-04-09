import 'package:appjam/chat/chat.dart';
import 'package:appjam/courses/courses.dart';
import 'package:appjam/screen/drawer.dart';
import 'package:appjam/news/news.dart';
import 'package:appjam/ranking/ranking.dart';
import 'package:appjam/screen/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:spider_chart/spider_chart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Column(children: [
          SizedBox(height: 30),
          CircleAvatar(
            backgroundImage: NetworkImage("assets/images/logo.png"),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            child: Text("Logout"),
            onPressed: () {
              FirebaseAuth.instance.signOut().then((value) {
                debugPrint("Signed Out");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInScreen()));
              });
            },
          ),
          SizedBox(height: 30),
          Container(
            width: 300,
            height: 300,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: SpiderChart(
                labels: [
                  "Project Management",
                  "Flutter",
                  "Problem Solving",
                  "Group Working",
                  "Unity"
                ],
                data: [
                  7,
                  5,
                  10,
                  7,
                  4,
                ],
                maxValue:
                    10, // the maximum value that you want to represent (essentially sets the data scale of the chart)
                colors: <Color>[
                  Colors.red,
                  Colors.green,
                  Colors.blue,
                  Colors.yellow,
                  Colors.indigo,
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
