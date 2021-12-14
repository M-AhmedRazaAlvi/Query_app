import 'package:flutter/material.dart';

import 'num_verifok1.dart';

class IdVerify extends StatefulWidget {
  const IdVerify({Key? key}) : super(key: key);

  @override
  _IdVerifyState createState() => _IdVerifyState();
}

class _IdVerifyState extends State<IdVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/images/Chevron.png')),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.9,
              //color: Colors.blue,
              child: Text(
                'Verificación de Identidad',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
//////////////////////////////////////////////////////////////////////////
            Container(
              margin: EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height * 0.17,
              width: MediaQuery.of(context).size.width * 0.95,
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Por favor ingresa una fotografía o scan de un\ndocumento oficial, tal como identificación de\nresidencia, pasaporte, o licencia de conducir.',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Esta información es completamente\nconfidencial, y será utilizada únicamente para\nla verificación de identidad de este perfil.',
                      style: TextStyle(fontSize: 17),
                    ),
                  )
                ],
              ),
            ),
///////////////////////////////////////////////////////////////////////////////////
            Container(
              margin: EdgeInsets.only(top: 20),
              color: Colors.black26,
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Image.asset(
                'assets/images/Group 8930.png',
                fit: BoxFit.cover,
              ),
            ),
/////////////////////////////////////////////////////////////////////////////
            Container(
              margin: EdgeInsets.only(top: 20),
              height: MediaQuery.of(context).size.height * 0.04,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Color.fromRGBO(248, 124, 86, 1),
                  )),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Subir archivo",
                  style: TextStyle(
                    color: Color.fromRGBO(248, 124, 86, 1),
                  ),
                ),
              ),
            ),
////////////////////////////////////////////////////////////////////////////////
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(248, 124, 86, 1),
                  borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NumVerifyOk1()));
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
    );
  }
}
