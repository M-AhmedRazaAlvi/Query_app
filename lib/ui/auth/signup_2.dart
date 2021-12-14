import 'package:flutter/material.dart';

import 'num_verify.dart';

//import 'package:intl_phone_number_input/intl_phone_number_input.dart';
class Signup2 extends StatefulWidget {
  const Signup2({Key? key}) : super(key: key);

  @override
  _Signup2State createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  bool _isHidden = true;
  // ignore: unused_field
  String _password = '';
  // ignore: unused_field
  String _confirmPassword = '';
  // ignore: unused_element
  // void _trySubmitForm() {
  //   final isValid = _formKey.currentState!.validate();
  //   if (isValid) {
  //     print('Everything looks good!');

  //     print(_password);
  //     print(_confirmPassword);

  //     /*
  //     Continute proccessing the provided information with your own logic
  //     such us sending HTTP requests, savaing to SQLite database, etc.
  //     */
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    //String? dropdownValue = 'French';
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/images/Chevron.png')),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.4,
                child: Center(
                  child: Text(
                    'Registro',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              /////////////////////////////////////////////////////////////////////////////////
              Container(
                margin: EdgeInsets.only(top: 20),
                height: MediaQuery.of(context).size.height * 0.63,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    inputName(
                      text: 'Nombre',
                    ),
                    inputName(
                      text: 'Nombre de usuario',
                    ),
                    inputName(
                      text: 'Email',
                    ),
                    ////////////////////////////////////////////////////////////////
                    Container(
                      child: Column(
                        children: [
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
                            child: Column(
                              children: [
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
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //////////////////////////////////////////////////////////////////////
//////////////////////////password/////////////////////////////////////////////////////

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
                                  margin: EdgeInsets.only(left: 10),
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
                    //////////////////////////////////////////////////////////////////////////
                    ///
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
                                  margin: EdgeInsets.only(left: 10),
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
                  ],
                ),
              ),
              /////////////////////////////////////////////////////////////////////////////

              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(248, 124, 86, 1),
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NumVerify()));
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
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
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
