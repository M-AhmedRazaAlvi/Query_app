import 'package:daily_exercise_app/ui/Dashborad/profile.dart';
import 'package:daily_exercise_app/ui/home/preguntas.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Config4 extends StatefulWidget {
  const Config4({Key? key}) : super(key: key);

  @override
  _Config4State createState() => _Config4State();
}

class _Config4State extends State<Config4> {
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              child: Image.asset('assets/images/Group 2543.png')),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text("Reportar",
                      style: TextStyle(
                          color: Color.fromRGBO(248, 124, 86, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Container(
                padding: EdgeInsets.only(left: 10),
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Acoso'),
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text('Contenido inapropiado')),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text('Perfil falso')),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text('Perfil falso')),
                  ],
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
