import 'package:daily_exercise_app/ui/home/preguntas.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'notifs.dart';

class Config1 extends StatefulWidget {
  const Config1({Key? key}) : super(key: key);

  @override
  _Config1State createState() => _Config1State();
}

class _Config1State extends State<Config1> {
  String? dropdownValue = 'Español';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HOME()));
            },
            child: Icon(Icons.home, color: Color.fromRGBO(248, 124, 86, 1))),
        actions: [
          Container(
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Notifs()));
                  },
                  child: Image.asset('assets/images/Group 2543.png')))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.15,
                  margin: EdgeInsets.only(left: 40, top: 20),
                  child: Text(
                    'Idioma',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.35,
                  margin: EdgeInsets.only(left: 40, top: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromRGBO(233, 233, 233, 1)),
                  child: Center(
                    child: Container(
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                        ),
                        iconSize: 24,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 22),
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>['Español', 'English', 'Greek', 'Arabic']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 10, left: 40, bottom: 20),
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.33,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Tema',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25),
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/Path 3001.png'),
                            Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              /////////////////////////////////////////////////////////////////////////
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 20),
                        height: MediaQuery.of(context).size.height * 0.18,
                        width: MediaQuery.of(context).size.width * 0.35,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        child: Image.asset('assets/images/Intersection 12.png',
                            fit: BoxFit.cover)),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.074,
                      width: MediaQuery.of(context).size.width * 0.21,
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                margin: EdgeInsets.only(bottom: 5),
                                height: 20,
                                width: 30,
                                child: Image.asset(
                                    'assets/images/ic_perm_media_24px.png')),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                height: 30,
                                width: 60,
                                child: Text(
                                  'pic.jpg',
                                  style: TextStyle(fontSize: 18),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ///////////////////////////////////////////////////////////////////////////////////////
              Container(
                margin: EdgeInsets.only(top: 100),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromRGBO(248, 124, 86, 1)),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Guardar",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 30, left: 30),
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.32,
                  child: Text(
                    'Cerrar sesión',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 30),
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.37,
                  child: Text(
                    'Eliminar cuenta',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
            //color: Colors.grey,
            border: Border.fromBorderSide(BorderSide(
          color: Color.fromRGBO(250, 198, 153, 1),
        ))),
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
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.check_box_outline_blank,
                        color: Colors.black))),
            Icon(Icons.keyboard_arrow_left, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
