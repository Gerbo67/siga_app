import 'package:flutter/material.dart';
import 'package:siga_app/models/buzon/mensaje_model.dart';
import 'package:siga_app/properties/MyColors.dart';
import 'package:siga_app/properties/MyIcons.dart';
import 'package:siga_app/screens/home/Home.dart';

import 'AppBarCustom.dart';
import 'Mensaje.dart';

Widget Buzon() {

  MensajeModel mensaje1 = MensajeModel(
    imagen: 'Perfil',
    nombre: 'Anonimo Perez Juarez',
    hora: '22:03',
    contenido: 'Te queria preguntar unas cosas...',
    nuevos: '1'
  );

  MensajeModel mensaje2 = MensajeModel(
      imagen: 'Perfil2',
      nombre: 'Anonimo Rodriguez Lino',
      hora: 'Miercoles',
      contenido: 'Las frutas son rojas sabias?...',
      nuevos: '5'
  );

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
                    CustomListTile(mensaje1),
                    CustomListTile(mensaje2),
                    CustomListTile(mensaje1),
                    CustomListTile(mensaje2),
                    CustomListTile(mensaje1),
                    CustomListTile(mensaje2),
                    CustomListTile(mensaje1),
                    CustomListTile(mensaje2),
                    CustomListTile(mensaje1),
                    CustomListTile(mensaje2),
                  ],
                ),
              ),
            )
          ]);
        },
      ));
}
