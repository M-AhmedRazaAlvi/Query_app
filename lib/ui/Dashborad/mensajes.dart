import 'package:daily_exercise_app/ui/Dashborad/video_call.dart';
import 'package:daily_exercise_app/ui/home/config_2.dart';
import 'package:daily_exercise_app/ui/home/notifs.dart';
import 'package:daily_exercise_app/ui/home/preguntas.dart';
import 'package:flutter/material.dart';

class Mensajes extends StatefulWidget {
  const Mensajes({Key? key}) : super(key: key);

  @override
  _MensajesState createState() => _MensajesState();
}

class _MensajesState extends State<Mensajes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.home, color: Color.fromRGBO(248, 124, 86, 1)),
        title: Align(
            alignment: Alignment.bottomRight,
            child: Container(
                height: 30,
                width: 30,
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Notifs()));
                    },
                    child: Image.asset('assets/images/Group 2543.png')))),
        actions: [
          Container(
              child: Row(children: [
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Config2()));
                },
                child: Icon(Icons.view_headline,
                    color: Color.fromRGBO(248, 124, 86, 1)))
          ]))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Stack(children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/Intersection 13.png',
                                  ),
                                  fit: BoxFit.fill)),
                          child: Stack(children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Image.asset('assets/images/away.png'),
                                ))
                          ]),
                        ),
                      ]),
                      Container(
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Row(children: [
                              Text('Alam Gabrie'),
                              Container(
                                  height: 20,
                                  width: 20,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  VideoCall()));
                                    },
                                    child: Image.asset(
                                        'assets/images/Group 2541.png'),
                                  ))
                            ])),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width * .9,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * .6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(255, 227, 154, 1)),
                          child: Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Ese no lo he leído! Lo agregaré'),
                                    Text('a la lista! 🤓'),
                                  ]))),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * .55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(248, 124, 86, 1)),
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jaja, siii!! Te lo recomiendo!'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * .3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(255, 227, 154, 1)),
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Agregado!'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * .2,
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hoy',
                                style: TextStyle(
                                    color: Color.fromRGBO(248, 124, 86, 1),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * .35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(248, 124, 86, 1)),
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Heyy!!! 😋'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * .6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(248, 124, 86, 1)),
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Cómo va la lectura? 👀'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * .7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(255, 227, 154, 1),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Ya lo fui a comprar! No he tenido'),
                              Text('oportunidad de leer mucho, pero'),
                              Text('lo poco que llevo va muuuuy bien!'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * .9,
                // color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * .15,
                      child: Image.asset('assets/images/smiley-button.png'),
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * .55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(234, 234, 234, 1),
                        ),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 30,
                              width: 40,
                              padding: EdgeInsets.only(right: 10),
                              child: Image.asset(
                                'assets/images/paperclip.png',
                                fit: BoxFit.fill,
                              ),
                            ))),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * .15,
                      child: Image.asset('assets/images/audio-button.png'),
                    ),
                  ],
                ),
              )
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
