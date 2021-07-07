import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:siga_app/properties/MyColors.dart';
import 'package:siga_app/properties/MyIcons.dart';
import 'Background.dart';
import 'Dialog.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var _user = TextEditingController();
  var _password = TextEditingController();

  @override
  void dispose() {
    Loader.hide();
    print("Called dispose");

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomPaint(
        painter: Background(),
        child: Builder(builder: (context) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 12),
                    child: Image(
                      image: AssetImage('assets/images/logout.png'),
                    )),
                Container(
                    height: MediaQuery.of(context).size.height / 1.7,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.25), blurRadius: 7)
                      ],
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          //Inputs
                          Expanded(
                              flex: 3,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(35, 20, 35, 30),
                                //color: Colors.blue,
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    TextFormField(
                                      controller: _user,
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.allow(
                                            RegExp(r'[0-9]')),
                                      ],
                                      decoration: const InputDecoration(
                                          hintText: 'No. Control',
                                          prefixIconConstraints:
                                          BoxConstraints(minWidth: 30),
                                          prefixIcon: Icon(
                                            IconDesing.usuario,
                                            size: 20,
                                          )),
                                      validator: (value) {
                                        if (value.isEmpty || value.length != 10) {
                                          return 'No. Control Incorrecto';
                                        }
                                        return null;
                                      },
                                    ),
                                    TextFormField(
                                      controller: _password,
                                      decoration: const InputDecoration(
                                          hintText: 'Contraseña',
                                          prefixIconConstraints:
                                          BoxConstraints(minWidth: 30),
                                          prefixIcon: Icon(
                                            IconDesing.llave,
                                            size: 20,
                                          )),
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Contraseña incorrecta';
                                        }
                                        return null;
                                      },
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            '¿Olvidaste tu Contraseña?',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(color: darkColor),
                                          ),
                                          GestureDetector(
                                              onTap: () {
                                                DialogIngresaNoControl(context);
                                              },
                                              child: Container(
                                                child: Text(
                                                  'Haz clic aqui',
                                                  textAlign: TextAlign.center,
                                                  style:
                                                  TextStyle(color: LinkColor),
                                                ),
                                              ))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          //Button
                          Expanded(
                              flex: 1,
                              child: Container(
                                //color: Colors.red,
                                child: Center(
                                  child: Material(
                                      child: InkWell(
                                        onTap: () async {
                                          onTap:
                                          if (_formKey.currentState.validate()) {
                                            Loader.show(context,
                                                isAppbarOverlay: true,
                                                isBottomBarOverlay: true,
                                                overlayColor: Colors.white12,
                                                progressIndicator: CircularProgressIndicator(
                                                  backgroundColor: SecondaryColor,
                                                ));

                                            var url = Uri.parse('http://utngappback-env.eba-8m7ppt8j.us-west-2.elasticbeanstalk.com/auth/login');
                                            var response = await http.post(url, body: {'usuario': _user.text, 'password': _password.text});
                                            Map data = jsonDecode(response.body);
                                            if(data['message'] == 'OK'){
                                              Navigator.pushNamed(context, 'principal');
                                            }else if(data['message'] == 'NOTPASSWORD'){
                                              _password.text = '';
                                              _formKey.currentState.validate();
                                            }else{
                                              _user.text = '';
                                              _formKey.currentState.validate();
                                            }
                                          }
                                          Loader.hide();
                                        },
                                        child: Ink(
                                            width: MediaQuery.of(context).size.width /
                                                1.5,
                                            height: 54,
                                            decoration: BoxDecoration(
                                                color: SecondaryColor,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4))),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                'Inicia Sesión',
                                                style: TextStyle(
                                                    color: LightColor,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                            )),
                                      )),
                                ),
                              ))
                        ],
                      ),
                    )),
              ],
            ),
          );
        }),
      ),
    );
  }
}
