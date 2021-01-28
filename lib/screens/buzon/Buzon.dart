import 'package:flutter/material.dart';
import 'package:siga_app/models/buzon/mensaje_model.dart';
import 'package:siga_app/properties/MyColors.dart';
import 'package:siga_app/properties/MyIcons.dart';
import 'package:siga_app/screens/home/Home.dart';

import 'AppBarCustom.dart';
import 'Mensaje.dart';

Widget Buzon() {


  List<MensajeModel> mensaje = [mensaje1,mensaje2,mensaje3,mensaje1,mensaje2,mensaje3,mensaje1,mensaje2,mensaje3];

  return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Builder(
        builder: (context) {
          return Column(children: [
            Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    children: [
                      Expanded(flex: 3, child: Container()),
                      Expanded(
                        flex: 7,
                        child: CustomAppBar(context),
                      ),
                    ],
                  ),
                )),
            Expanded(
              flex: 15,
              child: Container(
                //color:Colors.pink,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    for(int i = 0 ; i<mensaje.length;i++)
                      CustomListTile(mensaje: mensaje[i])
                  ],
                ),
              ),
            )
          ]);
        },
      ));
}
