import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:siga_app/properties/MyColors.dart';
import 'package:siga_app/properties/MyIcons.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';

DialogIngresaNoControl(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return MyDialog();
      });
}

class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => new _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  final _formCorreo = GlobalKey<FormState>();
  bool visibilityDialog = true;
  var _user = TextEditingController();

  @override
  void dispose() {
    Loader.hide();
    print("Called dispose");

    super.dispose();
  }

  @override
  Widget build(BuildContext context1) {
    return SimpleDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        contentPadding: EdgeInsets.all(0),
        children: <Widget>[
          Form(
            key: _formCorreo,
            child: Container(
                margin: EdgeInsets.all(10),
                child: visibilityDialog
                    ? Column(
                  children: <Widget>[
                    TextFormField(
                      controller: _user,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(
                            RegExp(r'[0-9]')),
                      ],
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: LightColor,
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(6, 8, 6, 8),
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: LightColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: LightColor),
                        ),
                        hintStyle:
                        TextStyle(fontSize: 12, color: BackLetter),
                        hintText: 'Escribe tu numero de control...',
                      ),
                      validator: (value) {
                        if (value.isEmpty || value.length != 10) {
                          return 'No. Control Incorrecto';
                        }
                        return null;
                      },
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 18, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context, false);
                            },
                            child: Container(
                              child: Icon(
                                IconDesing.salida,
                                size: 15,
                                color: BlackIcon,
                              ),
                            ),
                          ),
                          Container(
                              width: 100,
                              height: 28,
                              child: Center(
                                  child: Container(
                                    child: Material(
                                        child: InkWell(
                                          onTap: () async {
                                            onTap:
                                            if (_formCorreo.currentState.validate()) {

                                              Loader.show(context,
                                                  isAppbarOverlay: true,
                                                  isBottomBarOverlay: true,
                                                  overlayColor: Colors.white12,
                                                  progressIndicator: CircularProgressIndicator(
                                                    backgroundColor: SecondaryColor,
                                                  ));

                                              var url = Uri.parse('http://utngappback-env.eba-8m7ppt8j.us-west-2.elasticbeanstalk.com/auth/forgot');
                                              var response = await http.put(url, body: {'usuario': _user.text});
                                              Map data = jsonDecode(response.body);
                                              switch(data['message']){
                                                case 'OK':{
                                                  setState(() {
                                                    visibilityDialog = false;
                                                  });
                                                }break;
                                                case 'NOTUSER':{
                                                  _user.text = '';
                                                  _formCorreo.currentState.validate();
                                                }break;
                                                case 'NOTUP':{
                                                  _user.text = 'Limite del dia (3 max)';
                                                  _formCorreo.currentState.validate();
                                                }break;
                                              }

                                              Loader.hide();
                                            }
                                          },
                                          child: Ink(
                                              width: 100,
                                              height: 28,
                                              decoration: BoxDecoration(
                                                  color: SecondaryColor,
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(4))),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'Envía',
                                                  style: TextStyle(
                                                      color: LightColor,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12),
                                                ),
                                              )),
                                        )),
                                  ))),
                        ],
                      ),
                    )
                  ],
                )
                    : Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.transparent,
                        isDense: true,
                        enabled: false,
                        prefixIcon: Icon(
                          IconDesing.correcto_icono,
                          color: CorrectoColor,
                        ),
                        contentPadding: EdgeInsets.fromLTRB(6, 15, 6, 8),
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: LightColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: LightColor),
                        ),
                        hintStyle:
                        TextStyle(fontSize: 13, color: BlackIcon),
                        hintText: 'Nueva contraseña enviada a su correo',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Material(
                          child: InkWell(
                            onTap: () {
                              onTap:
                              Navigator.pop(context, false);
                            },
                            child: Ink(
                                width: 100,
                                height: 28,
                                decoration: BoxDecoration(
                                    color: SecondaryColor,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Entiendo',
                                    style: TextStyle(
                                        color: LightColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                )),
                          )),
                    )
                  ],
                )),
          )
        ]);
  }
}