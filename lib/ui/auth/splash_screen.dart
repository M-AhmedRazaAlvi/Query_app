import 'package:flutter/material.dart';

import 'signup_1.dart';

class LoadScreen extends StatefulWidget {
  const LoadScreen({Key? key}) : super(key: key);

  @override
  _LoadScreenState createState() => _LoadScreenState();
}

class _LoadScreenState extends State<LoadScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'assets/images/Layer3.png',
            ),
            fit: BoxFit.fill,
          )),
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 300),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signup1()));
                    },
                    child: Text(
                      '¡Bienvenidx!',
                      style: TextStyle(fontSize: 65, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
