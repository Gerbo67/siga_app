import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:siga_app/properties/MyColors.dart';
import 'package:siga_app/properties/MyIcons.dart';
import 'package:siga_app/screens/home/home.dart';
import 'Background.dart';
import 'Dialog.dart';

Widget Login() {
  final _formKey = GlobalKey<FormState>();
  return Scaffold(
    resizeToAvoidBottomPadding: false,
    body: CustomPaint(
      painter: Background(),
      child: Builder(builder: (context) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery
                          .of(context)
                          .size
                          .height / 12),
                  child: Image(
                    image: AssetImage('assets/images/logout.png'),
                  )),
              Container(

                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 1.7,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width / 1.2,
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
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    TextFormField(
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
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
                                        if (value.isEmpty ||
                                            value.length != 10) {
                                          return 'No. Control Incorrecto';
                                        }
                                        return null;
                                      },
                                    ),
                                    TextFormField(
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
                                          return 'Ingresa una Contraseña';
                                        }
                                        return null;
                                      },
                                    ),
                                   Container(
                                     child: Column(children: [
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
                                     ],),
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
                                  child:Material(
                                      child: InkWell(
                                        onTap: () {
                                          onTap:
                                          if (_formKey.currentState.validate()) {
                                            // Si creedenciales son validas ingresa a home
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => Home()));
                                          }
                                        },
                                        child: Ink(
                                            width: MediaQuery.of(context).size.width/1.5,
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
                  )
              ),
            ],
          ),
        );
      }),
    ),
  );
}
