import 'package:flutter/material.dart';
import 'package:need/Screens/Course/quiz.dart';
import 'package:need/Screens/Course/youtube_player.dart';

class SLevel1 extends StatefulWidget {
  const SLevel1({super.key});

  @override
  State<SLevel1> createState() => _SLevel1State();
}

class _SLevel1State extends State<SLevel1> {
  @override
  final List<Map<String, dynamic>> basicStockMarketQuestions = [
  {
    'question': 'What is a stock?',
    'answers': [
      {'answerText': 'A share in the ownership of a company.', 'score': true},
      {'answerText': 'A type of government bond.', 'score': false},
      {'answerText': 'A physical certificate representing ownership in a company.', 'score': false},
      {'answerText': 'A type of mutual fund.', 'score': false},
    ],
  },
  {
    'question': 'What is the primary purpose of a stock exchange?',
    'answers': [
      {'answerText': 'To facilitate the buying and selling of stocks.', 'score': true},
      {'answerText': 'To provide loans to companies for expansion.', 'score': false},
      {'answerText': 'To regulate the stock market.', 'score': false},
      {'answerText': 'To issue new stocks to the public.', 'score': false},
    ],
  },
  {
    'question': 'What does IPO stand for?',
    'answers': [
      {'answerText': 'Initial Public Offering.', 'score': true},
      {'answerText': 'International Purchase Order.', 'score': false},
      {'answerText': 'Institutional Purchase Offer.', 'score': false},
      {'answerText': 'Investment Portfolio Option.', 'score': false},
    ],
  },
  {
    'question': 'What is a dividend?',
    'answers': [
      {'answerText': 'A portion of a company\'s profits paid to shareholders.', 'score': true},
      {'answerText': 'The price of a stock at a given moment.', 'score': false},
      {'answerText': 'The fee charged by a broker for buying stocks.', 'score': false},
      {'answerText': 'The interest earned on a government bond.', 'score': false},
    ],
  },
  {
    'question': 'What is the Dow Jones Industrial Average?',
    'answers': [
      {'answerText': 'A stock market index that measures the performance of 30 large companies listed on stock exchanges in the United States.', 'score': true},
      {'answerText': 'A measure of the average price of all stocks listed on a particular exchange.', 'score': false},
      {'answerText': 'A government agency regulating the stock market.', 'score': false},
      {'answerText': 'A financial newspaper reporting on market trends.', 'score': false},
    ],
  },
  {
    'question': 'What is a bull market?',
    'answers': [
      {'answerText': 'A market characterized by rising prices.', 'score': true},
      {'answerText': 'A market characterized by declining prices.', 'score': false},
      {'answerText': 'A market with no significant price changes.', 'score': false},
      {'answerText': 'A market with high volatility.', 'score': false},
    ],
  },
  {
    'question': 'What is a bear market?',
    'answers': [
      {'answerText': 'A market characterized by declining prices.', 'score': true},
      {'answerText': 'A market characterized by rising prices.', 'score': false},
      {'answerText': 'A market with no significant price changes.', 'score': false},
      {'answerText': 'A market with high volatility.', 'score': false},
    ],
  },
  {
    'question': 'What is a blue-chip stock?',
    'answers': [
      {'answerText': 'A stock of a well-established, financially sound company with a history of stable earnings.', 'score': true},
      {'answerText': 'A stock with a low market capitalization.', 'score': false},
      {'answerText': 'A stock of a newly established startup company.', 'score': false},
      {'answerText': 'A stock with high volatility.', 'score': false},
    ],
  },
  {
    'question': 'What is market capitalization?',
    'answers': [
      {'answerText': 'The total value of a company\'s outstanding shares of stock.', 'score': true},
      {'answerText': 'The price of a stock at a given moment.', 'score': false},
      {'answerText': 'The amount of money invested in a mutual fund.', 'score': false},
      {'answerText': 'The fee charged by a broker for buying stocks.', 'score': false},
    ],
  },
  {
    'question': 'What is a stock split?',
    'answers': [
      {'answerText': 'A corporate action that increases the number of a company\'s outstanding shares.', 'score': true},
      {'answerText': 'A decline in the value of a stock.', 'score': false},
      {'answerText': 'The division of a company into separate entities.', 'score': false},
      {'answerText': 'A merger of two or more companies.', 'score': false},
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
                            'https://youtu.be/67WwuPI-y5M?si=juvlm-HO4-v5tJDi',
                        videoTitle: 'Basics of stock market for beginners',
                        videoDescription: 'Basics of stock market for beginners: What is share market & how stock market works')));
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://i.ytimg.com/vi/67WwuPI-y5M/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCUuPsl-aQA2efHAdKR2ZpVem8K1w",
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
                        'Basics of stock market for beginners',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Basics of stock market for beginners: What is share market & how stock market works',
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
                            'https://youtu.be/p7HKvqRI_Bo?si=1PSlOZFgkqUblyD5',
                        videoTitle: 'How does the stock market work',
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
                    "https://i.ytimg.com/vi/p7HKvqRI_Bo/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAckmE3o4oEuUQxapjMqYN3-s7EsQ",
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
                        'How does the stock market work',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'How does the stock market work',
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
                        videoUrl: 'https://www.youtube.com/watch?v=fzp02ud0AHc&list=PLfEVwubAeLh9Ua43yskVcQMf2CWTQy3xr&index=9',
                        videoTitle: 'Stock Market Explained | Share Market | What is IPO ?',
                        videoDescription:
                            'Stock Market Explained | Share Market | What is IPO ? | Sensex | Nifty ')));
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    "https://i.ytimg.com/vi/fzp02ud0AHc/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLC6YA-gt1fT-oke4A-cDAMA5pQj0g",
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
                        'Stock Market Explained | Share Market | What is IPO ?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Stock Market Explained | Share Market | What is IPO ? | Sensex | Nifty',
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
                builder: (context) => Quiz(questions: basicStockMarketQuestions),
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
