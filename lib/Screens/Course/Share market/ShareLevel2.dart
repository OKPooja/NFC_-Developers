import 'package:flutter/material.dart';
import 'package:need/Screens/Course/quiz.dart';
import 'package:need/Screens/Course/youtube_player.dart';

class SLevel2 extends StatefulWidget {
  const SLevel2({super.key});

  @override
  State<SLevel2> createState() => _SLevel2State();
}

class _SLevel2State extends State<SLevel2> {
  @override

  List<Map<String, dynamic>> SLevel2Q = [
  {
    'question': 'What is a P/E ratio in the context of stocks?',
    'answers': [
      {'answerText': 'Price-to-Earnings ratio - It measures the valuation of a company by dividing its share price by earnings per share.', 'score': true},
      {'answerText': 'Percentage of Earnings ratio - It indicates the portion of profits distributed to shareholders.', 'score': false},
      {'answerText': 'Profit and Equity ratio - It shows the relationship between company profits and shareholder equity.', 'score': false},
      {'answerText': 'Price-to-Expense ratio - It compares the price of a stock to its operating expenses.', 'score': false},
    ],
  },
  {
    'question': 'What is a dividend yield?',
    'answers': [
      {'answerText': 'The annual dividend income earned per share, expressed as a percentage of the stock\'s current market price.', 'score': true},
      {'answerText': 'The increase in a stock\'s price over a given period of time.', 'score': false},
      {'answerText': 'The total value of all dividends paid out by a company in a year.', 'score': false},
      {'answerText': 'The percentage of profits reinvested by a company.', 'score': false},
    ],
  },
  {
    'question': 'What does the term "market volatility" refer to?',
    'answers': [
      {'answerText': 'The degree of variation in trading price series over a certain period of time.', 'score': true},
      {'answerText': 'The rate at which stocks are bought and sold in the market.', 'score': false},
      {'answerText': 'The level of government intervention in the stock market.', 'score': false},
      {'answerText': 'The percentage of investors holding a particular stock.', 'score': false},
    ],
  },
  {
    'question': 'What is a stock exchange index?',
    'answers': [
      {'answerText': 'A measurement of the performance of a specific group of stocks in a stock market.', 'score': true},
      {'answerText': 'The average price of all stocks listed on a particular exchange.', 'score': false},
      {'answerText': 'A list of companies that are about to go public.', 'score': false},
      {'answerText': 'An index used to calculate taxes on stock market transactions.', 'score': false},
    ],
  },
  {
    'question': 'What is the purpose of a stop-loss order in stock trading?',
    'answers': [
      {'answerText': 'To limit potential losses by automatically selling a stock if its price falls to a certain level.', 'score': true},
      {'answerText': 'To buy a stock when its price is at its lowest point.', 'score': false},
      {'answerText': 'To prevent unauthorized access to a trading account.', 'score': false},
      {'answerText': 'To initiate a short selling strategy.', 'score': false},
    ],
  },
  {
    'question': 'What is a blue-sky law in the context of securities?',
    'answers': [
      {'answerText': 'State regulations designed to protect investors from securities fraud.', 'score': true},
      {'answerText': 'Federal regulations governing the issuance and trading of stocks.', 'score': false},
      {'answerText': 'A law prohibiting speculative trading in certain industries.', 'score': false},
      {'answerText': 'A legal framework for managing corporate mergers and acquisitions.', 'score': false},
    ],
  },
  {
    'question': 'What is insider trading?',
    'answers': [
      {'answerText': 'Buying or selling a security in breach of a fiduciary duty or other relationship of trust and confidence, while in possession of material, nonpublic information about the security.', 'score': true},
      {'answerText': 'Trading of stocks by high-level executives of a company.', 'score': false},
      {'answerText': 'Trading stocks based on public information available to all investors.', 'score': false},
      {'answerText': 'Investing in stocks of companies with low market capitalization.', 'score': false},
    ],
  },
  {
    'question': 'What does the term "blue-collar investor" refer to?',
    'answers': [
      {'answerText': 'An individual who works in a manual or industrial job and invests in the stock market.', 'score': true},
      {'answerText': 'An investor who specializes in trading blue-chip stocks.', 'score': false},
      {'answerText': 'A person who invests in real estate rather than stocks.', 'score': false},
      {'answerText': 'An investor with limited knowledge of the stock market.', 'score': false},
    ],
  },
  {
    'question': 'What is a mutual fund in the context of stock market investing?',
    'answers': [
      {'answerText': 'A professionally managed investment fund that pools money from many investors to purchase securities.', 'score': true},
      {'answerText': 'A fund that invests exclusively in government bonds.', 'score': false},
      {'answerText': 'A fund that focuses on short-term trading of stocks.', 'score': false},
      {'answerText': 'A fund that invests primarily in real estate properties.', 'score': false},
    ],
  },
  {
    'question': 'What is a stock option?',
    'answers': [
      {'answerText': 'A contract that gives the holder the right to buy or sell a specific quantity of a stock at a particular price.', 'score': true},
      {'answerText': 'A type of preferred stock issued by a company.', 'score': false},
      {'answerText': 'A government-issued bond that can be converted into shares of stock.', 'score': false},
      {'answerText': 'A type of mutual fund that focuses on technology stocks.', 'score': false},
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
                            'https://youtu.be/iasvhMVhoSM?feature=shared',
                        videoTitle: 'What is Demat Account | How to choose a broker',
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
                          "https://i.ytimg.com/vi/iasvhMVhoSM/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDa9vimaXCjlnMf8wyxmxfjb_obxQ",
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
                              'What is Demat Account | How to choose a broker',
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
                            'https://www.youtube.com/watch?v=03s4PhapyUs&list=PLfEVwubAeLh9Ua43yskVcQMf2CWTQy3xr&index=11',
                        videoTitle: 'Types of stocks',
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
                          "https://i.ytimg.com/vi/03s4PhapyUs/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBcdBWAqHBqZG9lv0TdQWyZtc5o0A",
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
                              'Types of stocks',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'bassss',
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
                            'https://youtu.be/UVCjBtMwg8g?feature=shared',
                        videoTitle: 'How to buy your first stock in India',
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
                          "https://i.ytimg.com/vi/UVCjBtMwg8g/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBC5DGj47E8o3LPkxwdXgk3bF0icg",
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
                              'How to buy your first stock in India',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'How to buy your first stock in India',
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
                            'httpshttps://www.youtube.com/watch?v=xsAO_c_5sXk',
                        videoTitle: 'Your 1st Step in Stock Market',
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
                          "https://i.ytimg.com/vi/xsAO_c_5sXk/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDqTsgaIRNY5aa-TaxW8DBaVmo8Mg",
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
                              'Your 1st Step in Stock Market',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Your 1st Step in Stock Market',
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
                builder: (context) => Quiz(questions: SLevel2Q),
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