import 'package:flutter/material.dart';
import 'package:need/Screens/Course/quiz.dart';
import 'package:need/Screens/Course/youtube_player.dart';

class Mlevel1 extends StatefulWidget {
  const Mlevel1({super.key});

  @override
  State<Mlevel1> createState() => _Mlevel1State();
}

class _Mlevel1State extends State<Mlevel1> {
  @override
  final List<Map<String, dynamic>> MutualFundQuestions = [
    {
      'question': 'What is a mutual fund?',
      'answers': [
        {'answerText': 'A government savings scheme.', 'score': false},
        {
          'answerText':
              'A type of investment where money is pooled from various investors to invest in stocks, bonds, or other securities.',
          'score': true
        },
        {
          'answerText': 'A bank account with high-interest rates.',
          'score': false
        },
        {'answerText': 'A type of insurance policy.', 'score': false},
      ],
    },
    {
      'question': 'Who manages a mutual fund?',
      'answers': [
        {'answerText': 'The individual investors.', 'score': false},
        {'answerText': 'The bank.', 'score': false},
        {'answerText': 'The fund manager.', 'score': true},
        {'answerText': 'The government.', 'score': false},
      ],
    },
    {
      'question': 'What is a NAV in a mutual fund?',
      'answers': [
        {'answerText': 'Net Annual Value.', 'score': false},
        {
          'answerText':
              'Net Asset Value - It represents the per-unit price of the mutual fund.',
          'score': true
        },
        {'answerText': 'Non-Allocated Value.', 'score': false},
        {
          'answerText': 'National Average Value of investments.',
          'score': false
        },
      ],
    },
    {
      'question': 'What are the types of mutual funds?',
      'answers': [
        {'answerText': 'National and International.', 'score': false},
        {'answerText': 'Savings and Checking.', 'score': false},
        {
          'answerText': 'Equity, Debt, Hybrid, and Solution Oriented.',
          'score': true
        },
        {'answerText': 'Fixed and Variable.', 'score': false},
      ],
    },
    {
      'question': 'What is a SIP?',
      'answers': [
        {'answerText': 'Structured Investment Portfolio.', 'score': false},
        {
          'answerText':
              'Systematic Investment Plan - A method to invest a fixed sum regularly in a mutual fund.',
          'score': true
        },
        {'answerText': 'Sustainable Investment Platform.', 'score': false},
        {'answerText': 'Savings and Investment Plan.', 'score': false},
      ],
    },
    {
      'question': 'What is the benefit of diversification in a mutual fund?',
      'answers': [
        {'answerText': 'It allows early withdrawal of funds.', 'score': false},
        {
          'answerText': 'It guarantees a fixed return on investment.',
          'score': false
        },
        {'answerText': 'It provides tax benefits.', 'score': false},
        {
          'answerText':
              'It helps spread risk by investing in a variety of assets.',
          'score': true
        },
      ],
    },
    {
      'question': 'What is a expense ratio in a mutual fund?',
      'answers': [
        {
          'answerText': 'It is the total amount of money invested in the fund.',
          'score': false
        },
        {
          'answerText':
              'It represents the cost of managing the fund, expressed as a percentage of the fund\'s average assets.',
          'score': true
        },
        {
          'answerText': 'It is the interest earned on the fund.',
          'score': false
        },
        {
          'answerText': 'It is the dividend paid to the investors.',
          'score': false
        },
      ],
    },
    {
      'question': 'What is a load in a mutual fund?',
      'answers': [
        {
          'answerText': 'It is the profit earned by the fund manager.',
          'score': false
        },
        {
          'answerText':
              'It is a fee charged by some funds when investors buy or sell units.',
          'score': true
        },
        {
          'answerText': 'It is the maximum limit on investment.',
          'score': false
        },
        {
          'answerText': 'It is the minimum amount required to start investing.',
          'score': false
        },
      ],
    },
    {
      'question':
          'What is the difference between an open-end and a closed-end mutual fund?',
      'answers': [
        {
          'answerText':
              'Open-end funds invest only in stocks, while closed-end funds invest only in bonds.',
          'score': false
        },
        {
          'answerText': 'Open-end funds are riskier than closed-end funds.',
          'score': false
        },
        {
          'answerText':
              'Open-end funds are only available to institutional investors, while closed-end funds are for individual investors.',
          'score': false
        },
        {
          'answerText':
              'Open-end funds can issue and redeem shares at any time, while closed-end funds have a fixed number of shares and are traded on exchanges.',
          'score': true
        },
      ],
    },
    {
      'question':
          'What is the importance of the investment objective in a mutual fund?',
      'answers': [
        {
          'answerText': 'It determines the tax implications of the fund.',
          'score': false
        },
        {
          'answerText': 'It sets the minimum investment amount.',
          'score': false
        },
        {
          'answerText': 'It indicates the past performance of the fund.',
          'score': false
        },
        {
          'answerText':
              'It helps investors understand the goals and risk profile of the fund.',
          'score': true
        },
      ],
    },
  ];

  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text("Level 1"),
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => YouTubePlayer(
                        videoUrl:
                            'https://youtu.be/PbldLCsspgE?si=-nCYVTucIlrcYQgv',
                        videoTitle: 'What is Mutual Funds',
                        videoDescription: 'Blog')));
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://i.ytimg.com/vi/PbldLCsspgE/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBIssNwd3sqz7eFd03-2ehgJ9UDbg",
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
                        'What is Mutual Funds',
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
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => YouTubePlayer(
                        videoUrl:
                            'https://youtu.be/8A3s9WP_7l4?si=FqyEsmiBCNkrEv12',
                        videoTitle: 'What is mutual funds by Dhruv',
                        videoDescription: 'Blog')));
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://i.ytimg.com/vi/8A3s9WP_7l4/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBF4bcWaIsGEdy_eBqkDTejKjET5Q",
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
                        'What is mutual funds by Dhruv',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Best ways to find Funds',
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
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => YouTubePlayer(
                        videoUrl: 'https://www.youtube.com/watch?v=rsFBpGUAZWA',
                        videoTitle: 'How to Begin in Mutual Funds',
                        videoDescription:
                            'What is a Mutual Fund and How Does It Work?')));
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://i.ytimg.com/vi/rsFBpGUAZWA/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCbyHaGxRLljYu9lO69GKB8Uw3JbA",
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
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Quiz(questions: MutualFundQuestions),
              ),
            );
          },
          child: Container(
            color: Colors.green,
            height: 55,
            child: Align(
              alignment: Alignment.center,
              child: Text(' Take Quiz 1', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight:FontWeight.w700)),
            ),
          ),
        ),
      ],
    );
  }
}
