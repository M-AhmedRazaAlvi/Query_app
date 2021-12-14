import 'package:daily_exercise_app/ui/home/preguntas.dart';
import 'package:flutter/material.dart';

import 'config_3.dart';
import 'config_4.dart';
import 'config_5.dart';
import 'config_6.dart';
import 'home.dart';
import 'notifs.dart';

class Config2 extends StatefulWidget {
  const Config2({Key? key}) : super(key: key);

  @override
  _Config2State createState() => _Config2State();
}

class _Config2State extends State<Config2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HOME()));
          },
          child: Icon(
            Icons.home,
            color: Color.fromRGBO(248, 124, 86, 1),
          ),
        ),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Notifs()));
              },
              child: Image.asset('assets/images/Group 2543.png')),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              BlockButton(
                text: 'Bloquear',
                OnPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Config3()));
                },
              ),
              BlockButton(
                text: 'Silenciar',
                OnPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Config6()));
                },
              ),
              BlockButton(
                text: 'Reportar',
                OnPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Config4()));
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Config5()));
                  },
                  child: Text("Ayuda",
                      style: TextStyle(
                          color: Color.fromRGBO(248, 124, 86, 1),
                          fontSize: 20)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                  onPressed: () {},
                  child: Text("F.A.Q",
                      style: TextStyle(
                          color: Color.fromRGBO(248, 124, 86, 1),
                          fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        decoration: BoxDecoration(
            color: Color.fromRGBO(248, 124, 86, 1),
            borderRadius:
                BorderRadius.vertical(top: Radius.elliptical(200, 30))),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 114),
              height: MediaQuery.of(context).size.height * 0.06,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 30,
                    width: 30,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Preguntas()));
                      },
                      child: Image.asset(
                        'assets/images/ic_menu_24px.png',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Preguntas()));
                      },
                      child: Icon(Icons.check_box_outline_blank,
                          color: Colors.black)),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child:
                          Icon(Icons.keyboard_arrow_left, color: Colors.black)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlockButton extends StatelessWidget {
  final String text;
  final OnPress;
  const BlockButton({
    Key? key,
    required this.text,
    this.OnPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
          color: Color.fromRGBO(248, 124, 86, 1),
          borderRadius: BorderRadius.circular(30)),
      child: TextButton(
        onPressed: OnPress,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
