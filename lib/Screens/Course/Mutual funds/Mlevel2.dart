import 'package:flutter/material.dart';

class Mlevel2 extends StatefulWidget {
  const Mlevel2({super.key});

  @override
  State<Mlevel2> createState() => _Mlevel2State();
}

class _Mlevel2State extends State<Mlevel2> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
            title: Text("Level 1"),
            children: [
              InkWell(
                onTap: () {
                  // Handle onTap event
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://media.gettyimages.com/id/170141153/photo/making-money-with-mutual-funds-for-retirement.jpg?s=612x612&w=gi&k=20&c=Cd51I-5tyY0CWgTUTUjXr24G4WnSum6WzG-5AHvFPso=",
                          height: 90,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              'Basics of Mutual Funds',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Basic Guide',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Handle onTap event
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://assets.entrepreneur.com/content/3x2/2000/20190927120434-mutualfund.jpeg",
                          height: 90,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              'Types of Equity Funds',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Basics of Mutual Funds: Episode #3 Types of Equity Funds - All Season Funds',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),InkWell(
                onTap: () {
                  // Handle onTap event
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://assets.entrepreneur.com/content/3x2/2000/20190927120434-mutualfund.jpeg",
                          height: 90,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              'How to Begin in Mutual Funds',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'What is a Mutual Fund and How Does It Work?',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
  }
}