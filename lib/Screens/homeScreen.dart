import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gap/gap.dart';
import 'package:need/Screens/mentors.dart';

import 'course_quiz.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;

  final List<String> imgList = [
    'assets/financial literacy.png',
    'https://www.rainbook.org/png/how-money-works.png',
    'https://media.licdn.com/dms/image/D5612AQFUCvJclf8gdw/article-cover_image-shrink_720_1280/0/1685715012677?e=2147483647&v=beta&t=62gU_6jmo0Oj2D5jx2I1lUlKXw5NHNLRvajuTgesjDY'
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)
        ..rotateY(isDrawerOpen ? -0.5 : 0),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(
            //   height: 50,
            // ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOpen
                      ? IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            setState(
                              () {
                                xOffset = 0;
                                yOffset = 0;
                                scaleFactor = 1;
                                isDrawerOpen = false;
                              },
                            );
                          },
                        )
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              xOffset = 230;
                              yOffset = 150;
                              scaleFactor = 0.6;
                              isDrawerOpen = true;
                            });
                          },
                          icon: Icon(Icons.menu, size: 40.0),
                        ),
                  // Column(
                  //   children: [
                  //     Text('Financial literacy blah'),
                  //     Row(
                  //       children: [],
                  //     ),
                  //     CircleAvatar()
                  //   ],
                  // ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                //height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    //Hello Manish
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                        ),
                        color: Color.fromRGBO(4, 22, 66, 1.0),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 35,
                            left: 0,
                            child: Container(
                              height: 80,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 50,
                            child: Text(
                              'Hello Manish!',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //Carousel
                    CarouselSlider(
                      items: imgList.map<Widget>(
                            (item) {
                          if (item.startsWith('https://')) {
                            // Load network image
                            return Container(
                              child: Center(
                                child: Image.network(
                                  item,
                                  fit: BoxFit.cover,
                                  width: 1000,
                                ),
                              ),
                            );
                          } else {
                            // Load asset image
                            return Container(
                              child: Center(
                                child: Image.asset(
                                  item,
                                  fit: BoxFit.cover,
                                  width: 1000,
                                ),
                              ),
                            );
                          }
                        },
                      ).toList(),
                      options: CarouselOptions(
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //Education redirect
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: Column(
                          children: [
                            Container(
                              height: 60,
                              child: Text(
                                'Savings? Deep dive on how to save more',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              height: 150,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                                color: Colors.black.withOpacity(0.5),
                                image: DecorationImage(
                                  image: AssetImage('assets/finance.jpeg'),
                                  fit: BoxFit.cover,
                                  opacity: 0.4,
                                ),
                              ),
                              child: Center(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(
                                    9,
                                    22,
                                    56,
                                    1), // Set the button background color
                                foregroundColor:
                                Colors.white, // Set the text color
                              ),
                                  onPressed: () {
                                    // Navigate to CourseQuiz screen here
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => CourseQuiz()),
                                    );
                                  },
                                  child: Text("Let's get started"),
                                ),
                              ),
                            ),
                          ]
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            child: Text(
                              'Seek advice from our mentors',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              color: Color.fromRGBO(53, 162, 159, 1.0),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
                                      child: Text(
                                        'Aryan Sawant',
                                        style: TextStyle(
                                          fontSize: 35,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.monetization_on, // Add a coins icon
                                            color: Colors.black,
                                          ),
                                          SizedBox(width: 5), // Add spacing
                                          Text(
                                            '400 Coins', // Display the number of coins
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Replace with your logic here to navigate and pass dummy arguments
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Mentors(
                                                  // Pass your dummy arguments here
                                                  mentorName: 'Aryan Sawant',
                                                  mentorImage: 'assets/person.jpeg',
                                                  mentorInfo: 'Aditya Sawant is a highly skilled financial advisor with over 10 years of experience in helping individuals and businesses achieve their financial goals. He specializes in investment strategies, retirement planning, and wealth management. Aditya is dedicated to providing personalized financial guidance to his clients and helping them build a secure financial future.',
                                                  mentorCoins: 400,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text('Know More'),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromRGBO(
                                                9,
                                                22,
                                                56,
                                                1), // Set the button background color
                                            foregroundColor:
                                            Colors.white, // Set the text color
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Gap(10.0),
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/person.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              color: Color.fromRGBO(11, 102, 106, 1.0),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
                                      child: Text(
                                        'Ram Singh',
                                        style: TextStyle(
                                          fontSize: 35,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.monetization_on, // Add a coins icon
                                            color: Colors.black,
                                          ),
                                          SizedBox(width: 5), // Add spacing
                                          Text(
                                            '200 Coins', // Display the number of coins
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Replace with your logic here to navigate and pass dummy arguments
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Mentors(
                                                  // Pass your dummy arguments here
                                                  mentorName: 'Ram Singh',
                                                  mentorImage: 'assets/person.jpeg',
                                                  mentorInfo: 'Meet Ram Singh, a seasoned financial expert known for his exceptional knowledge and commitment to financial well-being. With a strong background in investment management, Aditya has successfully guided numerous clients towards financial success. He has a keen eye for market trends and can offer valuable insights into stocks, bonds, and real estate investments.',
                                                  mentorCoins: 200,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text('Know More'),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromRGBO(
                                                9,
                                                22,
                                                56,
                                                1), // Set the button background color
                                            foregroundColor:
                                            Colors.white, // Set the text color
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Gap(40.0),
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/person.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              color: Color.fromRGBO(53, 162, 159, 1.0),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
                                      child: Text(
                                        'Omkar Joshi',
                                        style: TextStyle(
                                          fontSize: 35,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.monetization_on, // Add a coins icon
                                            color: Colors.black,
                                          ),
                                          SizedBox(width: 5), // Add spacing
                                          Text(
                                            '100 Coins', // Display the number of coins
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Replace with your logic here to navigate and pass dummy arguments
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Mentors(
                                                  // Pass your dummy arguments here
                                                  mentorName: 'Omkar Joshi',
                                                  mentorImage: 'assets/person.jpeg',
                                                  mentorInfo: 'Introducing Aditya Sawant, a dedicated financial advisor with a passion for helping people achieve financial freedom. With a wealth of experience in the finance industry, Aditya has assisted countless clients in making informed investment decisions. His expertise spans across various financial instruments, including stocks, mutual funds, and retirement planning.',
                                                  mentorCoins: 100,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text('Know More'),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromRGBO(
                                                9,
                                                22,
                                                56,
                                                1), // Set the button background color
                                            foregroundColor:
                                            Colors.white, // Set the text color
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Gap(15.0),
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/person.jpeg'),
                                        fit: BoxFit.cover),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Carousel Slider
          ],
        ),
      ),
    );
  }
}
