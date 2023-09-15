import 'package:flutter/material.dart';
import 'package:need/Screens/Course/quiz.dart';
import 'package:need/Screens/Course/youtube_player.dart';

class SLevel3 extends StatefulWidget {
  const SLevel3({super.key});

  @override
  State<SLevel3> createState() => _SLevel3State();
}

class _SLevel3State extends State<SLevel3> {
  @override
  List<Map<String, dynamic>> toughStockMarketQuestions = [
  {
    'question': 'Scenario: You bought 100 shares of XYZ Corp at 50 rs per share. After a year, the stock pays a dividend of 2 rs per share. Calculate your dividend yield.',
    'answers': [
      {'answerText': '4%', 'score': true},
      {'answerText': '3%', 'score': false},
      {'answerText': '5%', 'score': false},
      {'answerText': '2%', 'score': false},
    ],
  },
  {
    'question': 'Scenario: You invested 15,000 rs in a stock. Over the next three years, the stock earns annual returns of 6%, 8%, and -2% respectively. What is the total value of your investment after three years?',
    'answers': [
      {'answerText': '18,874.40 rs', 'score': false},
      {'answerText': '19,301.44 rs', 'score': true},
      {'answerText': '18,220.50 rs', 'score': false},
      {'answerText': '17,925.60 rs', 'score': false},
    ],
  },
  {
    'question': 'What is the formula for calculating the Price-to-Earnings (P/E) ratio of a stock?',
    'answers': [
      {'answerText': 'Price per Share / Earnings per Share', 'score': true},
      {'answerText': 'Earnings per Share / Price per Share', 'score': false},
      {'answerText': 'Dividends per Share / Price per Share', 'score': false},
      {'answerText': 'Price per Share / Dividends per Share', 'score': false},
    ],
  },
  {
    'question': 'Scenario: You have invested 10,000 rs in a stock. After one year, the stock is valued at 12,000 rs. What is your percentage return on investment?',
    'answers': [
      {'answerText': '20%', 'score': false},
      {'answerText': '15%', 'score': true},
      {'answerText': '25%', 'score': false},
      {'answerText': '10%', 'score': false},
    ],
  },
  {
    'question': 'What is the formula for calculating the Compound Annual Growth Rate (CAGR) of an investment?',
    'answers': [
      {'answerText': '[(Ending Value / Beginning Value) ^ (1/n)] - 1', 'score': true},
      {'answerText': '[(Ending Value - Beginning Value) / Beginning Value] * 100', 'score': false},
      {'answerText': '[(Ending Value / Beginning Value) * 100] - 100', 'score': false},
      {'answerText': '[(Ending Value - Beginning Value) ^ (1/n)] * 100', 'score': false},
    ],
  },
  {
    'question': 'Scenario: You bought 500 shares of a stock at 30 rs per share. After three years, the stock has appreciated to 40 rs per share. What is your total gain from this investment?',
    'answers': [
      {'answerText': '5,000 rs', 'score': false},
      {'answerText': '7,500 rs', 'score': false},
      {'answerText': '10,000 rs', 'score': true},
      {'answerText': '12,500 rs', 'score': false},
    ],
  },
  {
    'question': 'What is the purpose of using a moving average in technical analysis of stocks?',
    'answers': [
      {'answerText': 'To smooth out short-term price fluctuations and identify trends over a period of time.', 'score': true},
      {'answerText': 'To predict future stock prices based on historical data.', 'score': false},
      {'answerText': 'To compare the performance of different stocks in the same industry.', 'score': false},
      {'answerText': 'To estimate the total market capitalization of a stock exchange.', 'score': false},
    ],
  },
  {
    'question': 'Scenario: You bought 200 shares of a stock at 25 rs per share. The stock pays an annual dividend of 2 rs per share. After two years, the stock price has risen to 30 rs per share. What is your total return on investment (including dividends) after two years?',
    'answers': [
      {'answerText': '1,200 rs', 'score': true},
      {'answerText': '800 rs', 'score': false},
      {'answerText': '1,000 rs', 'score': false},
      {'answerText': '1,400 rs', 'score': false},
    ],
  },
  {
    'question': 'What is the formula for calculating the Earnings per Share (EPS) of a company?',
    'answers': [
      {'answerText': 'Net Income / Total Outstanding Shares', 'score': true},
      {'answerText': 'Total Revenue / Total Outstanding Shares', 'score': false},
      {'answerText': 'Dividends Paid / Total Outstanding Shares', 'score': false},
      {'answerText': 'Total Assets / Total Outstanding Shares', 'score': false},
    ],
  },
  {
    'question': 'Scenario: You have invested 12,000 rs in a stock. After three years, the stock is valued at 10,000 rs. In addition, you received 600 rs in dividends over the three-year period. What is your total return on investment?',
    'answers': [
      {'answerText': '-8%', 'score': true},
      {'answerText': '5%', 'score': false},
      {'answerText': '10%', 'score': false},
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
                            'https://www.youtube.com/watch?v=dIxRYvFUlOM',
                        videoTitle: 'Option Trading | What is Option trading?',
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
                          "https://i.ytimg.com/vi/dIxRYvFUlOM/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDl5NLbO85QyFiRmsOuTqfPJSW69w",
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
                              'Option Trading | What is Option trading?',
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
                            'https://www.youtube.com/watch?v=koFl23q5oCU&list=PLfEVwubAeLh9Ua43yskVcQMf2CWTQy3xr&index=14',
                        videoTitle: 'Intraday Vs Long Term Investment',
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
                          "https://i.ytimg.com/vi/koFl23q5oCU/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLApWSZTfYctiLxsR7ckYJOwQwPcWA",
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
                              'Intraday Vs Long Term Investment',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Intraday Vs Long Term Investment',
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
                            'https://www.youtube.com/watch?v=lMlWvwWuSYk&list=PLfEVwubAeLh9Ua43yskVcQMf2CWTQy3xr&index=15',
                        videoTitle: 'Advance Price Action Trading Strategies',
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
                          "https://i.ytimg.com/vi/lMlWvwWuSYk/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLD9o7LrkC8u4f35RPgOO7SvI1HGSg",
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
                              'Advance Price Action Trading Strategies',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Advance Price Action Trading Strategies',
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
                            'https://youtu.be/vlpO_SNW2SI?feature=shared',
                        videoTitle: 'Price Action',
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
                          "https://i.ytimg.com/vi/vlpO_SNW2SI/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDnJ6TBP7-qJain6H8qBz_MlLAa9A",
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
                              'Price Action ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Price Action ',
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
                builder: (context) => Quiz(questions: toughStockMarketQuestions),
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