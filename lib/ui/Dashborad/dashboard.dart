import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  late CarouselSlider carouselSlider;
  // ignore: unused_field
  int _current = 0;
  List imgList = [
    'assets/images/Intersection11.png',
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
    // ignore: unused_local_variable

    return Scaffold(
      //backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.home,
          color: Color.fromRGBO(248, 124, 86, 1),
        ),
        actions: [
          Image.asset(
            'assets/images/ic_account_circle_24px.png',
            color: Color.fromRGBO(248, 124, 86, 1),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      carouselSlider = CarouselSlider(
                        options: CarouselOptions(
                          height: 400,
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
                                    //color: Colors.green,
                                    ),
                                child: Image.asset(
                                  imgUrl,
                                  fit: BoxFit.fill,
                                ),
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
                            onPressed: goToPrevious,
                            child: Text("<"),
                          ),
                          // ignore: deprecated_member_use
                          OutlineButton(
                            onPressed: goToNext,
                            child: Text(">"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2),
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25.0)),
                      side: BorderSide(color: Colors.black, width: 0.2)),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                            '   Estudiante de multimedia, ilustradora\nfreelance, y fan de demasiadas cosas 😅'),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text('Aco/Aro'),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/Q.png',
                ),
              ),
            ],
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

  goToPrevious() {
    // carouselSlider.previousPage(
    //     duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() {
    // carouselSlider.nextPage(
    //     duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}
