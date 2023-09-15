import 'package:flutter/material.dart';
import 'package:need/Screens/Course/quiz.dart';
import 'package:need/Screens/Course/youtube_player.dart';

class Mlevel3 extends StatefulWidget {
  const Mlevel3({super.key});

  @override
  State<Mlevel3> createState() => _Mlevel3State();
}

class _Mlevel3State extends State<Mlevel3> {
  @override
  List<Map<String, dynamic>> toughMutualFundQuestions = [
  {
    'question': 'Scenario: You have invested 10,000 rs in a mutual fund with an expense ratio of 1.5%. After one year, the fund has earned a total return of 8.5%. What is the net return on your investment?',
    'answers': [
      {'answerText': '7%', 'score': false},
      {'answerText': '6.5%', 'score': false},
      {'answerText': '6%', 'score': true},
      {'answerText': '8%', 'score': false},
    ],
  },
  {
    'question': 'Scenario: A mutual fund has an NAV of 25 rs. If you invest 5,000 rs, how many units of the fund will you receive?',
    'answers': [
      {'answerText': '200 units', 'score': true},
      {'answerText': '225 units', 'score': false},
      {'answerText': '180 units', 'score': false},
      {'answerText': '250 units', 'score': false},
    ],
  },
  {
    'question': 'What is the formula for calculating the Sharpe Ratio in mutual funds?',
    'answers': [
      {'answerText': 'Risk-free rate divided by standard deviation of the portfolio', 'score': false},
      {'answerText': 'Average return divided by standard deviation of the portfolio', 'score': false},
      {'answerText': '(Average return of the portfolio - Risk-free rate) divided by standard deviation of the portfolio', 'score': true},
      {'answerText': 'Risk-free rate divided by average return of the portfolio', 'score': false},
    ],
  },
  {
    'question': 'Scenario: You invested 7,000 rs in Fund A, which has an annual return of 10%. At the same time, you invested 5,000 rs in Fund B, which has an annual return of 12%. What is the weighted average return on your investments?',
    'answers': [
      {'answerText': '11%', 'score': true},
      {'answerText': '11.5%', 'score': false},
      {'answerText': '10.5%', 'score': false},
      {'answerText': '12%', 'score': false},
    ],
  },
  {
    'question': 'In which type of mutual fund do investors aim to track the performance of a specific market index?',
    'answers': [
      {'answerText': 'Index fund', 'score': true},
      {'answerText': 'Hedge fund', 'score': false},
      {'answerText': 'Active fund', 'score': false},
      {'answerText': 'Sector-specific fund', 'score': false},
    ],
  },
  {
    'question': 'Scenario: You have invested 15,000 rs in a mutual fund that has an annual expense ratio of 1.75%. After one year, the fund has earned a total return of 9.5%. What is the net return on your investment?',
    'answers': [
      {'answerText': '7.75%', 'score': false},
      {'answerText': '7%', 'score': true},
      {'answerText': '6.5%', 'score': false},
      {'answerText': '8%', 'score': false},
    ],
  },
  {
    'question': 'What is the main advantage of investing in a no-load mutual fund?',
    'answers': [
      {'answerText': 'No sales commission or fees are charged when buying or selling shares.', 'score': true},
      {'answerText': 'Higher returns compared to load funds.', 'score': false},
      {'answerText': 'Lower expense ratios.', 'score': false},
      {'answerText': 'Greater diversification in the fund\'s portfolio.', 'score': false},
    ],
  },
  {
    'question': 'Scenario: You invested 10,000 rs in a mutual fund with an initial NAV of 15 rs. After one year, the NAV has increased to 18 rs. What is the value of your investment?',
    'answers': [
      {'answerText': '12,000 rs', 'score': false},
      {'answerText': '13,333.33 rs', 'score': false},
      {'answerText': '12,666.67 rs', 'score': true},
      {'answerText': '15,000 rs', 'score': false},
    ],
  },
  {
    'question': 'What is a redemption fee in a mutual fund?',
    'answers': [
      {'answerText': 'A fee charged when investors buy new shares.', 'score': false},
      {'answerText': 'A fee charged annually to cover marketing and distribution expenses.', 'score': false},
      {'answerText': 'A fee charged when investors sell their shares, typically to discourage short-term trading.', 'score': true},
      {'answerText': 'A fee charged when investors hold their shares for a specified period.', 'score': false},
    ],
  },
  {
    'question': 'Scenario: You have invested 20,000 rs in a mutual fund. Over the next three years, the fund earns annual returns of 6%, 8%, and -2% respectively. What is the average annual return over the three-year period?',
    'answers': [
      {'answerText': '4%', 'score': false},
      {'answerText': '4.5%', 'score': false},
      {'answerText': '3.33%', 'score': true},
      {'answerText': '2%', 'score': false},
    ],
  },
];

  Widget build(BuildContext context) {
    return ExpansionTile(
            title: Text("Level 3"),
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => YouTubePlayer(
                        videoUrl:
                            'https://youtu.be/PXThRO04UwQ?feature=shared',
                        videoTitle: 'Debt Mutual Funds or Equity Mutual Funds',
                        videoDescription:
                            'Blog')));
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://i.ytimg.com/vi/PXThRO04UwQ/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLBQzfYou8ooKDxrMulBNyMV0F610w",
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
                              'Debt Mutual Funds or Equity Mutual Funds',
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
                  Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => YouTubePlayer(
                        videoUrl:
                            'https://www.youtube.com/watch?v=FLV2Jgy2Src&list=PLSiDKpku4U_X-9y3MEB8tgKEjXFPQu73w&index=7',
                        videoTitle: 'Mutual Funds SIP Investment vs Lump Sum',
                        videoDescription:
                            'Blog')));
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://i.ytimg.com/vi/FLV2Jgy2Src/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLCBb1GlxPZvs5LyGr3VevM2cZ049A",
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
                              'Mutual Funds SIP Investment vs Lump Sum',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Active and Passive Funds: Episode-2 - Basics of Mutual Funds with Groww',
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
                            'https://www.youtube.com/watch?v=VeuMig2IKUw&list=PLSiDKpku4U_X-9y3MEB8tgKEjXFPQu73w&index=9',
                        videoTitle: 'ETF Investing – Nifty BeES & Exchange Traded Funds',
                        videoDescription:
                            'Blog')));
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://i.ytimg.com/vi/VeuMig2IKUw/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLA4FT0428E3EPky2vtGHndcJZ9weA",
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
                              'ETF Investing – Nifty BeES & Exchange Traded Funds',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Basics of Mutual Funds: Episode #3 Types of Equity Funds',
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
                            'https://www.youtube.com/watch?v=Nrn3-G8IUSQ&list=PLSiDKpku4U_X-9y3MEB8tgKEjXFPQu73w&index=10',
                        videoTitle: 'ETF vs Index Funds vs Mutual Funds',
                        videoDescription:
                            'Blog')));
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://i.ytimg.com/vi/Nrn3-G8IUSQ/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLADadKbk5D2bccZQK8UuLsWB5Aa0Q",
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
                              'ETF Investing – Nifty BeES & Exchange Traded Funds',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Basics of Mutual Funds: Episode #3 Types of Equity Funds',
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
                builder: (context) => Quiz(questions: toughMutualFundQuestions),
              ),
            );
          },
          child: Container(
            color: Colors.green,
            height: 55,
            child: Align(
              alignment: Alignment.center,
              child: Text(' Take Quiz 3', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight:FontWeight.w700)),
            ),
          ),
        ),
            ],
          );
  }
}