/*import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: login()));
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<login> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("images/bts.jpg"),
              fit: BoxFit.fill,
            )),
        child: Column(
          children: [
            SizedBox(
              width: 100,
              height: 180,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(21),
              ),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    border: InputBorder.none,
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      fontFamily: 'Redressed',
                      fontSize: 30,
                    ),
                    icon: Icon(
                      Icons.mail,
                    )),
              ),
            ),
            SizedBox(
              width: 300,
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(22),
              ),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    border: InputBorder.none,
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontFamily: 'Redressed',
                      fontSize: 30,
                    ),
                    icon: Icon(
                      Icons.lock,
                    )),
              ),
            ),
            SizedBox(
              width: 300,
              height: 100,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                "LogIn",
                style: TextStyle(
                  fontFamily: 'Redressed',
                  fontSize: 30,
                ),
              ),
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}*/





