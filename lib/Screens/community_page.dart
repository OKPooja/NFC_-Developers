import 'package:flutter/material.dart';
import 'package:need/Screens/Cards/community_card.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  final List<Map<String, String>> tweets = [
    {"username": "Pooja", "content": "Invested in a new stock today! #StockMarket. Remember to always do thorough research before making investment decisions. It pays off in the long run."},
    {"username": "Manish", "content": "Just read an interesting article about personal finance. Learning about budgeting and saving has been a game-changer for me. Setting financial goals has never been more important."},
    {"username": "Jitesh", "content": "Diversifying my investment portfolio. #Finance. Don't put all your eggs in one basket! Spreading investments across different assets helps manage risk. Remember, patience is a key virtue in investing."},
    {"username": "Neha", "content": "Attended a seminar on retirement planning today. Starting early and having a clear plan is crucial for a comfortable retirement. It's never too early to plan for the future."},
    {"username": "Amit", "content": "Staying updated on economic indicators like GDP growth and inflation rates. It gives valuable insights for making investment decisions. Economic trends have a significant impact on our finances."},
    {"username": "Ritu", "content": "Explored the benefits of tax-saving investments. It's not just about saving money, it's about making it work for you. Tax planning is an integral part of financial well-being."},
    {"username": "Raj", "content": "Diving into the world of mutual funds. SIPs provide a convenient way to invest regularly and benefit from compounding. Consistency in investing pays off over time."},
    {"username": "Priya", "content": "Reading up on the importance of an emergency fund. It's a financial safety net that everyone should have in place. It brings peace of mind knowing you're prepared for unexpected expenses."},
    {"username": "Ankur", "content": "Analyzing market trends before making any major investment decisions. Being informed helps make more confident choices. The more you know, the better your decisions."},
    {"username": "Sneha", "content": "Learning about different types of insurances. It's a crucial part of financial planning to protect against unexpected events. Insurance provides a safety net for you and your loved ones."}
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF192c49),
        automaticallyImplyLeading: false,
        title: Center(child: Text('Feeds')),
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
