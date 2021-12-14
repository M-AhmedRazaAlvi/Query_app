import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'id_verify.dart';

class NumVerifyOk extends StatefulWidget {
  const NumVerifyOk({Key? key}) : super(key: key);

  @override
  _NumVerifyOkState createState() => _NumVerifyOkState();
}

class _NumVerifyOkState extends State<NumVerifyOk> {
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
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child:
                        Image.asset('assets/images/Q.png', fit: BoxFit.cover))),

//////////////////////////////////////////////////////////////////
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 20),
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.55,
              //color: Colors.blue,
              child: Text(
                'Verificación Mobil',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
//////////////////////////////////////////////////////////////////////////

            Container(
              margin: EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.12,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(92, 225, 230, 1),
                  shape: BoxShape.circle),
              child: Image.asset('assets/images/ic_done_24px.png'),
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
                    '¡Numero verificado exitosamente!',
                  ),
                ],
              ),
            ),
/////////////////////////////////////////////////////////////////////////////
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(248, 124, 86, 1),
                  borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => IdVerify()));
                },
                child: Text(
                  "Continuar",
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
