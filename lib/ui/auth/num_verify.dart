import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

import 'num_verifyok.dart';

class NumVerify extends StatefulWidget {
  const NumVerify({Key? key}) : super(key: key);

  @override
  NumVerify_State createState() => NumVerify_State();
}

class NumVerify_State extends State<NumVerify> {
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
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.9,
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
                  margin: EdgeInsets.only(top: 10, bottom: 100),
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Tu cuenta ha sido creada exitosamente.',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Hemos mandado un código de verificación por\nsms a tu celular. Por favor, ingresa el código a\ncontinuación',
                          style: TextStyle(fontSize: 17),
                        ),
                      )
                    ],
                  ),
                ),
                ///////////////////////////////////////////////////////////////////////////////////
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    //color: Colors.grey,
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.41,
                    child: Text(
                      'Código de verificación',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  color: Color.fromRGBO(243, 243, 243, 1),
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Center(
                    child: VerificationCode(
                      // textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
                      // underlineColor: Colors.amber,
                      keyboardType: TextInputType.number,
                      length: 5,
                      onCompleted: (String value) {
                        setState(() {
                          //_code = value;
                        });
                      },
                      onEditing: (bool value) {
                        setState(() {
                          // _onEditing = value;
                        });
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 5),
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.28,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Volver a enviar",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                ),
                ////////////////////////////////////////////////////////////////////////////////
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(248, 124, 86, 1),
                      borderRadius: BorderRadius.circular(30)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NumVerifyOk()));
                    },
                    child: Text(
                      "Crear perfil",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
