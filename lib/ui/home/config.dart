import 'package:daily_exercise_app/ui/home/preguntas.dart';
import 'package:flutter/material.dart';

import 'config_1.dart';
import 'home.dart';

class Config extends StatefulWidget {
  const Config({Key? key}) : super(key: key);

  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  bool _isHidden = true;
  // ignore: unused_field
  String _password = '';
  // ignore: unused_field
  String _confirmPassword = '';
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
                        MaterialPageRoute(builder: (context) => Config1()));
                  },
                  child: Image.asset('assets/images/Group 2543.png')))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width * .9,
                child: Column(
                  children: [
                    inputName(
                      text: 'Nombre de usuario',
                    ),
                    inputName(
                      text: 'Email',
                    ),
                    Container(
                      child: Column(children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("telefone"),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.88,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(233, 233, 233, 1),
                            ),
                            child: Column(children: [
                              Container(
                                  padding: EdgeInsets.only(left: 20),
                                  child: TextFormField(
                                    decoration: InputDecoration.collapsed(
                                      hintText: '',
                                      fillColor:
                                          Color.fromRGBO(243, 243, 243, 1),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter name';
                                      }
                                      return null;
                                    },
                                  ))
                            ]))
                      ]),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text("Contraseña"),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.88,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(233, 233, 233, 1),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width: 50,
                                  child: Image.asset(
                                      'assets/images/key-variant.png'),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  width: MediaQuery.of(context).size.width * .7,
                                  child: TextField(
                                    obscureText: _isHidden,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: '',
                                      suffixIcon: InkWell(
                                        onTap: _togglePasswordView,
                                        child: Icon(
                                          _isHidden
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                        ),
                                      ),
                                    ),
                                    //             validator: (value) {
                                    //   if (value!.isEmpty) {
                                    //     return 'This field is required';
                                    //   }
                                    //   if (value.trim().length < 8) {
                                    //     return 'Password must be at least 8 characters in length';
                                    //   }
                                    //   // Return null if the entered password is valid
                                    //   return null;
                                    // },
                                    // onChanged: (value) => _password = value,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text("Confirmar Contraseña"),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.88,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(233, 233, 233, 1),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width: 50,
                                  child: Image.asset(
                                      'assets/images/key-variant.png'),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  width: MediaQuery.of(context).size.width * .7,
                                  child: TextField(
                                    obscureText: _isHidden,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: '',
                                      suffixIcon: InkWell(
                                        onTap: _togglePasswordView,
                                        child: Icon(
                                          _isHidden
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                        ),
                                      ),
                                    ),
                                    //             validator: (value) {
                                    //   if (value!.isEmpty) {
                                    //     return 'This field is required';
                                    //   }
                                    //   if (value.trim().length < 8) {
                                    //     return 'Password must be at least 8 characters in length';
                                    //   }
                                    //   // Return null if the entered password is valid
                                    //   return null;
                                    // },
                                    // onChanged: (value) => _password = value,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    lockwidget(
                      texts: "Nombre Publico",
                      width1: MediaQuery.of(context).size.width * 0.88,
                      width2: MediaQuery.of(context).size.width * 0.7,
                    ),
                    lockwidget(
                      texts: "Ubicación",
                      width1: MediaQuery.of(context).size.width * 0.88,
                      width2: MediaQuery.of(context).size.width * 0.7,
                    ),
                    lockwidget(
                      texts: "Edad",
                      width1: MediaQuery.of(context).size.width * 0.2,
                      width2: MediaQuery.of(context).size.width * 0.08,
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

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}

class lockwidget extends StatelessWidget {
  final String texts;
  final double width1;
  final double width2;

  const lockwidget({
    Key? key,
    required this.texts,
    required this.width1,
    required this.width2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              texts,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              height: MediaQuery.of(context).size.height * 0.05,
              width: width1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(233, 233, 233, 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 20,
                    width: width2,
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                        hintText: '',
                        fillColor: Color.fromRGBO(243, 243, 243, 1),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter name';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    child: Icon(
                      Icons.lock,
                      color: Color.fromRGBO(248, 124, 86, 1),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class inputName extends StatelessWidget {
  final String text;
  const inputName({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(text),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.88,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(233, 233, 233, 1),
            ),
            child: Center(
              child: Container(
                padding: EdgeInsets.only(left: 20),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: '',
                    fillColor: Color.fromRGBO(243, 243, 243, 1),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter name';
                    }
                    return null;
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
