import 'package:carousel_slider/carousel_slider.dart';
import 'package:daily_exercise_app/ui/home/config.dart';
import 'package:daily_exercise_app/ui/home/home.dart';
import 'package:daily_exercise_app/ui/home/notifs.dart';
import 'package:daily_exercise_app/ui/home/preguntas.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late CarouselSlider carouselSlider;
  // ignore: unused_field
  int _current = 0;
  List imgList = [
    'assets/images/Inter.png',
    'assets/images/Intersection12.png',
    'assets/images/Intersection13.png',
  ];
  // List<T> map<T>(List list, Function handler) {
  //   List<T> result = [];
  //   for (var i = 0; i < list.length; i++) {
  //     result.add(handler(i, list[i]));
  //   }
  //   return result;
  // }
  @override
  Widget build(BuildContext context) {
    String? dropdownValue = 'En linea';
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .32,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          margin: EdgeInsets.only(top: 30, left: 20),
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Preguntas()));
                            },
                            child: Icon(Icons.email,
                                color: Color.fromRGBO(248, 124, 86, 1)),
                          ))),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    height: MediaQuery.of(context).size.height * 0.32,
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 25, left: 10),
                          height: 160,
                          width: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Intersection 12.png'))),
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child:
                                  Image.asset('assets/images/edit-image.png')),
                        ),
                        Column(
                          children: [
                            Text('Ena, 32',
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(248, 124, 86, 1))),
                            Text('GDL. Heterosexual. Amigos',
                                style: TextStyle(fontSize: 12)),
                            Container(
                              height: 25,
                              width: 120,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      height: 15,
                                      width: 15,
                                      child: Image.asset(
                                          "assets/images/online.png")),
                                  Container(
                                      height: 20,
                                      width: 80,
                                      color: Colors.white,
                                      child: DropdownButton<String>(
                                        value: dropdownValue,
                                        icon: const Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Colors.black,
                                        ),
                                        iconSize: 24,
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 16),
                                        onChanged: (newValue) {
                                          setState(() {
                                            dropdownValue = newValue;
                                          });
                                        },
                                        items: <String>[
                                          'En linea',
                                          'English',
                                          'Greek',
                                          'Arabic'
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                              value: value, child: Text(value));
                                        }).toList(),
                                      )),
                                  Container(
                                      height: 20,
                                      width: 20,
                                      child: Image.asset(
                                          'assets/images/ic_mode_edit_24px.png')),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.25,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HOME()));
                            },
                            child: Icon(Icons.home,
                                color: Color.fromRGBO(248, 124, 86, 1)),
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Notifs()));
                              },
                              child:
                                  Image.asset('assets/images/Group 2543.png')),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Config()));
                            },
                            child: Icon(Icons.view_headline,
                                color: Color.fromRGBO(248, 124, 86, 1)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Container(
                child: Column(
                  children: <Widget>[
                    carouselSlider = CarouselSlider(
                      options: CarouselOptions(
                        height: 440,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                        // onPageChanged:
                        // (index) {
                        //   setState(() {
                        //     _current = index;
                        //   });
                        // },
                      ),
                      items: imgList.map((imgUrl) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imgUrl),
                                      fit: BoxFit.fill)),
                              // child: Text('Ena,32'),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // ignore: deprecated_member_use
                        OutlineButton(
                            onPressed: goToPrevious, child: Text("<")),
                        // ignore: deprecated_member_use
                        OutlineButton(onPressed: goToNext, child: Text(">")),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
                height: 30,
                width: 30,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HOME()));
                  },
                  child: Image.asset(
                    'assets/images/ic_menu_24px.png',
                    color: Colors.black,
                  ),
                )),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HOME()));
                },
                child:
                    Icon(Icons.check_box_outline_blank, color: Colors.black)),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HOME()));
                },
                child: Icon(Icons.keyboard_arrow_left, color: Colors.black))
          ],
        ),
      ),
    );
  }

  goToPrevious() {
    // carouselSlider.previousPage(
    //     duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() {
    // carouselSlider.nextPage(
    //     duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}
