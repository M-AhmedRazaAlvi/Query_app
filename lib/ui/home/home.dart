import 'package:daily_exercise_app/ui/Dashborad/busqueda.dart';
import 'package:daily_exercise_app/ui/Dashborad/profile.dart';
import 'package:flutter/material.dart';

import 'notifs.dart';

class HOME extends StatefulWidget {
  const HOME({Key? key}) : super(key: key);

  @override
  _HOMEState createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(248, 124, 86, 1),
        title: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Image.asset(
                          'assets/images/ic_account_circle_24px.png')),
                  Container(
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Busqueda()));
                          },
                          child:
                              Image.asset('assets/images/ic_apps_24px.png'))),
                  Container(
                      child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Notifs()));
                    },
                    child: Image.asset('assets/images/Group 2543.png',
                        color: Colors.white),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(248, 124, 86, 1),
                          borderRadius: new BorderRadius.vertical(
                            bottom: new Radius.elliptical(200, 45),
                          ))),
                  Positioned(
                    bottom: -50,
                    left: 0,
                    right: 0,
                    child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/Intersection 12.png')))),
                  ),
                ],
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  //color: Colors.blue,
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                    child: Image.asset(
                      'assets/images/Qq.png',
                      //fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 100),
                            child: Text('novedades',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            height: MediaQuery.of(context).size.height * 0.13,
                            width: MediaQuery.of(context).size.width * 0.47,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12.0)),
                                  side: BorderSide(
                                      color: Colors.black, width: 0.2)),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 15, bottom: 15),
                                      child: Text('¡Ahora podrás sugerir',
                                          style: TextStyle(fontSize: 11))),
                                  Container(
                                      margin:
                                          EdgeInsets.only(left: 3, right: 1),
                                      child: Text(
                                          'Mejoras a información en perfiles',
                                          style: TextStyle(fontSize: 11))),
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: 3, top: 2, right: 1, bottom: 5),
                                      child: Text(
                                          '¡Giveaway en nuestro Instagram!',
                                          style: TextStyle(fontSize: 11))),
                                ],
                              ),
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            child: Text('tips',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                        Container(
                            margin: EdgeInsets.only(left: 5),
                            height: MediaQuery.of(context).size.height * 0.13,
                            width: MediaQuery.of(context).size.width * 0.47,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12.0)),
                                  side: BorderSide(
                                      color: Colors.black, width: 0.2)),
                              child: Container(
                                margin: EdgeInsets.only(top: 20, bottom: 20),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('¿No sabes qué decir? ¡Utiliza las',
                                        style: TextStyle(fontSize: 11)),
                                    Text(' preguntas predeterminadas!',
                                        style: TextStyle(fontSize: 11)),
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
            color: Color.fromRGBO(248, 124, 86, 1),
            borderRadius:
                BorderRadius.vertical(top: Radius.elliptical(200, 30))),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 116),
              height: MediaQuery.of(context).size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 30,
                    width: 30,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                      child: Image.asset(
                        'assets/images/ic_menu_24px.png',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                      child: Icon(Icons.check_box_outline_blank,
                          color: Colors.white)),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child:
                          Icon(Icons.keyboard_arrow_left, color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
