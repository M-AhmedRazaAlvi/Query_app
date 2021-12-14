import 'package:daily_exercise_app/ui/Dashborad/profile.dart';
import 'package:daily_exercise_app/ui/home/preguntas.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class DeVideo extends StatefulWidget {
  const DeVideo({Key? key}) : super(key: key);

  @override
  _DeVideoState createState() => _DeVideoState();
}

class _DeVideoState extends State<DeVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/Image 19.png',
                ),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, right: 120),
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "¿Cuál es tu libro favorito?",
                  style: TextStyle(
                      color: Color.fromRGBO(248, 124, 86, 1), fontSize: 16),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 500),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromRGBO(248, 124, 86, 1),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                      child: Text(
                        "enviar",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 10),
        height: MediaQuery.of(context).size.height * 0.07,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: 30,
              width: 30,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Preguntas()));
                },
                child: Image.asset(
                  'assets/images/ic_menu_24px.png',
                  color: Colors.black,
                ),
              ),
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Preguntas()));
                },
                child:
                    Icon(Icons.check_box_outline_blank, color: Colors.black)),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HOME()));
                },
                child: Icon(Icons.keyboard_arrow_left, color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
