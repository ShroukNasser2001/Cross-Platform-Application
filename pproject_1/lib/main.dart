import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'New News',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 27.0,
              ),
            ),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        bottomNavigationBar: Container(
          height: 60,
          child: BottomAppBar(
            color: Colors.deepPurple,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(40, 0, 60, 0),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white70,
                    size: 35.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 60, 0),
                  child: Icon(
                    Icons.message,
                    color: Colors.white70,
                    size: 35.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Icon(
                    Icons.share,
                    color: Colors.white70,
                    size: 35.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              child: Image.network('https://images.hindustantimes.com/img/2021/11/22/1600x900/AWARDS-AMERICAN-MUSIC--97_1637613102609_1637613116956.JPG'),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                      width: double.infinity,
                      height: 20,
                      color: Colors.black12,
                      child: Text(
                        '                       Biggest Band In the World',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ))
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtHcrAC3tT81c57MwbNN794r5L_ayi-grTl2Jks_53TCCKaJ4-MgsRho8OWDPaJxR5xEE&usqp=CAU'),
                    backgroundColor: Colors.brown.shade800,
                  ),
                  Text(
                    '  BTS Makes History At 2021 AMA',
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 15),
              child: Text(
                "  BTS won Artist of the Year—the biggest honor of the night—at the 2021 American Music Awards!                                                                 BTS has become the first Asian act in history to win Artist of the Year at the American Music Awards, and this also marks BTS’s third consecutive year winning Favorite Pop Duo or Group.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                "  Thank you ARMY",
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
