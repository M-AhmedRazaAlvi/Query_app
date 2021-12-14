import 'package:flutter/material.dart';

class LogOut extends StatefulWidget {
  const LogOut({Key? key}) : super(key: key);

  @override
  _LogOutState createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
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
                    onPressed: () {},
                    child: Text(
                      '¡Nos vemos pronto!',
                      style: TextStyle(fontSize: 40, color: Colors.white),
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
