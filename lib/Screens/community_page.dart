import 'package:flutter/material.dart';
import 'package:need/Screens/Cards/community_card.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  final List<Map<String, String>> tweets = [
    {"username": "Jitesh", "content": "Just testing my Flutter app! #Flutter"},
    {"username": "JaneDoe", "content": "Flutter is amazing!"},
    {"username": "JaneDoe", "content": "Flutter is amazing!"},
    {"username": "JaneDoe", "content": "Flutter is amazing!"},
    {"username": "JaneDoe", "content": "Flutter is amazing!"},
    {"username": "JaneDoe", "content": "Flutter is amazing!"},
    {"username": "JaneDoe", "content": "Flutter is amazing!"},
    {"username": "JaneDoe", "content": "Flutter is amazing!"},
    {"username": "JaneDoe", "content": "Flutter is amazing!"},
    {"username": "JaneDoe", "content": "Flutter is amazing!"},
    {"username": "JaneDoe", "content": "Flutter is amazing!"},
    {"username": "JaneDoe", "content": "Flutter is amazing!"},
    {"username": "JaneDoe", "content": "Flutter is amazing!"},
    {"username": "JaneDoe", "content": "Flutter is amazing!"},

    // Add more tweets here as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Twitter Clone'),
      ),
      body: ListView.builder(
        itemCount: tweets.length,
        itemBuilder: (context, index) {
          return TweetCard(
            username: tweets[index]["username"]!,
            content: tweets[index]["content"]!,
          );
        },
      ),
    );
  }
}
