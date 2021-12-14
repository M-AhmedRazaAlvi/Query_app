import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Query extends StatefulWidget {
  const Query({Key? key}) : super(key: key);

  @override
  _QueryState createState() => _QueryState();
}

class _QueryState extends State<Query> {
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
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.only(bottom: 10, left: 30, right: 30),
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(right: 200, bottom: 20),
                    child: Text(
                      'Ena, 32',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "¡Query!",
                      style: TextStyle(
                          color: Color.fromRGBO(248, 124, 86, 1), fontSize: 22),
                    ),
                  ),
                )
              ],
            ),
          ),
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
              child: Image.asset(
                'assets/images/ic_menu_24px.png',
                color: Colors.black,
              ),
            ),
            Icon(Icons.check_box_outline_blank, color: Colors.black),
            Icon(Icons.keyboard_arrow_left, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
