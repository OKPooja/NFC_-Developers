import 'package:flutter/material.dart';
import 'package:need/Screens/Course/quiz.dart';
import 'package:need/Screens/Course/youtube_player.dart';

class Mlevel2 extends StatefulWidget {
  const Mlevel2({super.key});

  @override
  State<Mlevel2> createState() => _Mlevel2State();
}

class _Mlevel2State extends State<Mlevel2> {
  @override

  List<Map<String, dynamic>> Mlevel2Q = [
  {
    'question': 'What is the difference between a load and a no-load mutual fund?',
    'answers': [
      {'answerText': 'A load fund charges a sales commission or fee, while a no-load fund does not.', 'score': true},
      {'answerText': 'A load fund provides higher returns, while a no-load fund is more stable.', 'score': false},
      {'answerText': 'A load fund has higher expense ratios, while a no-load fund has lower fees.', 'score': false},
      {'answerText': 'A load fund is riskier, while a no-load fund is more conservative.', 'score': false},
    ],
  },
  {
    'question': 'What is a capital gains distribution in a mutual fund?',
    'answers': [
      {'answerText': 'It is the profit earned by the fund manager.', 'score': false},
      {'answerText': 'It is the total amount of money invested in the fund.', 'score': false},
      {'answerText': 'It is the distribution of profits made from the sale of securities in the fund\'s portfolio.', 'score': true},
      {'answerText': 'It is the interest earned on the fund.', 'score': false},
    ],
  },
  {
    'question': 'What is the role of a custodian in a mutual fund?',
    'answers': [
      {'answerText': 'To manage the fund\'s investments and make buy/sell decisions.', 'score': false},
      {'answerText': 'To handle administrative tasks and hold the fund\'s assets in safekeeping.', 'score': true},
      {'answerText': 'To provide advice to investors on which funds to choose.', 'score': false},
      {'answerText': 'To market and promote the mutual fund.', 'score': false},
    ],
  },
  {
    'question': 'What is an expense ratio cap in a mutual fund?',
    'answers': [
      {'answerText': 'It is the maximum limit on investment.', 'score': false},
      {'answerText': 'It represents the cost of managing the fund, expressed as a percentage of the fund\'s average assets, but with an upper limit.', 'score': true},
      {'answerText': 'It is the total amount of money invested in the fund.', 'score': false},
      {'answerText': 'It is the dividend paid to the investors.', 'score': false},
    ],
  },
  {
    'question': 'What is a balanced fund in mutual funds?',
    'answers': [
      {'answerText': 'A fund that invests primarily in stocks.', 'score': false},
      {'answerText': 'A fund that invests primarily in fixed-income securities.', 'score': false},
      {'answerText': 'A fund that combines both stocks and bonds in its portfolio.', 'score': true},
      {'answerText': 'A fund that focuses on short-term investments.', 'score': false},
    ],
  },
  {
    'question': 'What is a sector-specific fund?',
    'answers': [
      {'answerText': 'A fund that invests in a specific industry or sector, such as technology or healthcare.', 'score': true},
      {'answerText': 'A fund that diversifies across multiple industries.', 'score': false},
      {'answerText': 'A fund that only invests in government securities.', 'score': false},
      {'answerText': 'A fund that focuses on international investments.', 'score': false},
    ],
  },
  {
    'question': 'What is the difference between growth and value funds?',
    'answers': [
      {'answerText': 'Growth funds aim for capital appreciation and invest in stocks with high growth potential, while value funds seek undervalued stocks with strong fundamentals.', 'score': true},
      {'answerText': 'Growth funds provide higher dividends, while value funds have higher volatility.', 'score': false},
      {'answerText': 'Growth funds have lower risk, while value funds have higher risk.', 'score': false},
      {'answerText': 'Growth funds invest primarily in fixed-income securities, while value funds focus on equities.', 'score': false},
    ],
  },
  {
    'question': 'What is a 12b-1 fee in a mutual fund?',
    'answers': [
      {'answerText': 'It is the minimum amount required to start investing.', 'score': false},
      {'answerText': 'It represents the cost of managing the fund, expressed as a percentage of the fund\'s average assets.', 'score': false},
      {'answerText': 'It is an annual fee charged by some funds to cover marketing and distribution expenses.', 'score': true},
      {'answerText': 'It is the interest earned on the fund.', 'score': false},
    ],
  },
  {
    'question': 'What is a prospectus in mutual funds?',
    'answers': [
      {'answerText': 'A document that provides detailed information about a mutual fund, including its investment objectives, risks, fees, and past performance.', 'score': true},
      {'answerText': 'A report on the fund\'s annual performance.', 'score': false},
      {'answerText': 'A statement of account sent to investors.', 'score': false},
      {'answerText': 'A legal agreement between the fund manager and the investor.', 'score': false},
    ],
  },
  {
    'question': 'What is a back-end load in a mutual fund?',
    'answers': [
      {'answerText': 'A fee charged when investors sell their shares, typically on a sliding scale that decreases over time.', 'score': true},
      {'answerText': 'A fee charged when investors buy new shares.', 'score': false},
      {'answerText': 'A fee charged annually to cover marketing and distribution expenses.', 'score': false},
      {'answerText': 'A fee charged when investors hold their shares for a specified period.', 'score': false},
    ],
  },
];

  Widget build(BuildContext context) {
    return ExpansionTile(
            title: Text("Level 2"),
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => YouTubePlayer(
                        videoUrl:
                            'https://youtu.be/i2OcUvUfFJM?si=maU8dDl0UPaw5TQU',
                        videoTitle: 'Basics of Mutual Funds Episode 1',
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
                          "https://i.ytimg.com/vi/i2OcUvUfFJM/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCI0HJShXs9OTihw0kXLdzJYVDk-w",
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
                              'Basics of Mutual Funds Episode 1',
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
                            'https://www.youtube.com/watch?si=BkDmfsTnztfkwdRI&v=pMZSfei7qkM',
                        videoTitle: 'Active and Passive Funds: Episode-2 - Basics of Mutual Funds with Groww',
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
                          "https://i.ytimg.com/vi/pMZSfei7qkM/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDzrAS76EVT8drN-G1CBsBsE11sPQ",
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
                              'Active and Passive Funds: Episode-2',
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
              ),InkWell(
                onTap: () {
                  Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => YouTubePlayer(
                        videoUrl:
                            'https://www.youtube.com/watch?v=FxE4RvAh7L4',
                        videoTitle: 'Basics of Mutual Funds: Episode:3 Types of Equity Funds',
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
                          "https://i.ytimg.com/vi/FxE4RvAh7L4/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLC-VmR-i0uVAnjc0PHUcxhNulndcg",
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
                            'https://www.youtube.com/watch?v=1KMMqlSyiDE',
                        videoTitle: 'Large Cap, Mid Cap & Small Cap Stocks & Mutual Funds',
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
                          "https://i.ytimg.com/vi/1KMMqlSyiDE/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLD4PS-JEkXT1xv7phdc6EgO55DyVg",
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
                              'Large Cap, Mid Cap & Small Cap Stocks & Mutual Funds',
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
                builder: (context) => Quiz(questions: Mlevel2Q),
              ),
            );
          },
          child: Container(
            color: Colors.green,
            height: 55,
            child: Align(
              alignment: Alignment.center,
              child: Text(' Take Quiz 2', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight:FontWeight.w700)),
            ),
          ),
        ),
            ],
          );
  }
}