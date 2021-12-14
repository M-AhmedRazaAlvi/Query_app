import 'package:flutter/material.dart';

class Profile3 extends StatefulWidget {
  const Profile3({Key? key}) : super(key: key);

  @override
  _Profile3State createState() => _Profile3State();
}

class _Profile3State extends State<Profile3> {
  String? dropdownValue = 'Heterosexual';
  String? dropdownValue1 = 'Women';
  String? dropdownValue2 = 'Friends';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.view_headline,
              color: Color.fromRGBO(248, 124, 86, 1),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Aboutme(
                text: "About me",
                text1: "Hi! My name is Ena, I'm a Serbian English",
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 30),
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.85,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Likes",
                        style: TextStyle(
                            color: Color.fromRGBO(248, 124, 86, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Text(
                        "Reading and baking! And my favorite Mexican tradition is,",
                        style: TextStyle(fontSize: 13)),
                    Text(
                        "although a little cliché, Dia de Muertos! Love Catrinas!",
                        style: TextStyle(fontSize: 13)),
                  ],
                ),
              ),
              Aboutme(
                text: "Dislikes",
                text1: "I hate cumbia.. sorry!",
              ),
              Aboutme(
                text: "Hobbies",
                text1: "Reading, again, and watching historical movies/shows.",
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 30),
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.85,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Movies",
                        style: TextStyle(
                            color: Color.fromRGBO(248, 124, 86, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Text(
                        "I really like Disney too, not gonna lie about that one.",
                        style: TextStyle(fontSize: 13)),
                    Text("I probably can sing along to all of them!",
                        style: TextStyle(fontSize: 13)),
                  ],
                ),
              ),
              Aboutme(
                text: "Books",
                text1: "Been reading a lot of Mexican authors lately!",
              ),
              Aboutme(
                text: "Music",
                text1: "Rock, Metal, a bit of pop.",
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 30),
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.85,
                child: Text("Proferences",
                    style: TextStyle(
                        color: Color.fromRGBO(248, 124, 86, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.85,
                child: Row(
                  children: [
                    Text("I am: ", style: TextStyle(fontSize: 13)),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down, size: 24),
                        style:
                            const TextStyle(fontSize: 14, color: Colors.black),
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>['Heterosexual']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                              value: value, child: Text(value));
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.85,
                child: Row(
                  children: [
                    Text("Gender:", style: TextStyle(fontSize: 13)),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: DropdownButton<String>(
                        value: dropdownValue1,
                        icon: Container(
                            padding: EdgeInsets.only(left: 22),
                            child: const Icon(Icons.keyboard_arrow_down,
                                size: 24)),
                        style:
                            const TextStyle(fontSize: 14, color: Colors.black),
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue1 = newValue;
                          });
                        },
                        items: <String>['Women', 'men']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                              value: value, child: Text(value));
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.85,
                child: Row(
                  children: [
                    Text("Interested in:", style: TextStyle(fontSize: 13)),
                    Container(
                      // margin: EdgeInsets.only(left: 20),
                      child: DropdownButton<String>(
                        value: dropdownValue2,
                        icon: Container(
                            padding: EdgeInsets.only(left: 15),
                            child: const Icon(Icons.keyboard_arrow_down,
                                size: 24)),
                        style:
                            const TextStyle(fontSize: 14, color: Colors.black),
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue2 = newValue;
                          });
                        },
                        items: <String>['Friends', 'Ali', 'Usama']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                              value: value, child: Text(value));
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.08,
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

class Aboutme extends StatelessWidget {
  final String text;
  final String text1;
  const Aboutme({
    Key? key,
    required this.text,
    required this.text1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 30),
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.85,
      // color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(text,
              style: TextStyle(
                  color: Color.fromRGBO(248, 124, 86, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          Text(
            text1,
            style: TextStyle(fontSize: 13),
          ),
        ],
      ),
    );
  }
}
