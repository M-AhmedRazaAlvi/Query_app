import 'package:daily_exercise_app/ui/home/preguntas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'config_2.dart';
import 'home.dart';
import 'notifs.dart';

class Config5 extends StatefulWidget {
  const Config5({Key? key}) : super(key: key);

  @override
  _Config5State createState() => _Config5State();
}

class _Config5State extends State<Config5> {
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text("Ayuda",
                      style: TextStyle(
                          color: Color.fromRGBO(248, 124, 86, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Center(
                  child: Text('¿En qué podemos ayudarte?'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(12.0)),
                      side: BorderSide(color: Colors.black, width: 0.2)),
                  child: TextField(
                    minLines: 1,
                    maxLines: 5,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "",
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(248, 124, 86, 1),
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Config2()));
                  },
                  child: Text(
                    "Enviar",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
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
