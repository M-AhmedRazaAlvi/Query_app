import 'package:daily_exercise_app/ui/Dashborad/profile.dart';
import 'package:daily_exercise_app/ui/home/home.dart';
import 'package:flutter/material.dart';

class Busqueda extends StatefulWidget {
  const Busqueda({Key? key}) : super(key: key);

  @override
  _BusquedaState createState() => _BusquedaState();
}

class _BusquedaState extends State<Busqueda> {
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
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Image.asset('assets/images/Group 2543.png')))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/Busqueda.png'),
            // fit: BoxFit.fill,
          )),
          child: Center(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      margin: EdgeInsets.only(right: 100),
                      child: Image.asset('assets/images/Intersection 20.png')),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      margin: EdgeInsets.only(left: 50, top: 20),
                      child: Image.asset('assets/images/Intersection 15.png')),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      margin: EdgeInsets.only(right: 120),
                      child: Image.asset('assets/images/Intersection 16.png')),
                ),
                Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Image.asset('assets/images/Q.png')),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      margin: EdgeInsets.only(top: 100, left: 80),
                      child: Image.asset('assets/images/Intersection 17.png')),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Image.asset('assets/images/Intersection 18.png')),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Image.asset('assets/images/Intersection 19.png')),
                ),
              ],
            ),
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
              child: Column(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/ic_menu_24px.png',
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                child:
                    Icon(Icons.check_box_outline_blank, color: Colors.black)),
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.keyboard_arrow_left, color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
