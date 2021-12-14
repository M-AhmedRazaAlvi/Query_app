import 'package:daily_exercise_app/ui/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumVerifyOk1 extends StatefulWidget {
  const NumVerifyOk1({Key? key}) : super(key: key);

  @override
  _NumVerifyOk1State createState() => _NumVerifyOk1State();
}

class _NumVerifyOk1State extends State<NumVerifyOk1> {
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
                margin: EdgeInsets.only(bottom: 10),
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Image.asset('assets/images/Q.png', fit: BoxFit.cover)),

//////////////////////////////////////////////////////////////////
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 20),
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.7,
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
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.3,
              // color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.12,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(92, 225, 230, 1),
                        shape: BoxShape.circle),
                    child: Image.asset('assets/images/ic_done_24px.png'),
                  ),
                  Text(
                    '¡Gracias!',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
///////////////////////////////////////////////////////////////////////////
            Container(
              margin: EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width * 0.55,
              //color: Colors.blue,
              child: Column(
                children: [
                  Text(
                    'En un lapso de 2 a 4 días recibirás\n  un correo de confirmación si la\n verificación de tu documento ha\n                     sido exitosa.',
                  ),
                ],
              ),
            ),
/////////////////////////////////////////////////////////////////////////////
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(248, 124, 86, 1),
                  borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HOME()));
                },
                child: Text(
                  "Ir a Inicio",
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
