import 'package:daily_exercise_app/ui/home/preguntas.dart';
import 'package:flutter/material.dart';

import 'config_6.dart';
import 'home.dart';

class Config3 extends StatefulWidget {
  const Config3({Key? key}) : super(key: key);

  @override
  _Config3State createState() => _Config3State();
}

class _Config3State extends State<Config3> {
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
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Preguntas()));
            },
            child: Icon(
              Icons.home,
              color: Color.fromRGBO(248, 124, 86, 1),
            ),
          ),
        ),
        actions: [
          Image.asset('assets/images/Group 2543.png'),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Config6()));
                  },
                  child: Text("Usuario bloqueado",
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
