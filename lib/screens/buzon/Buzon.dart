import 'package:flutter/material.dart';
import 'package:siga_app/models/buzon/mensaje_model.dart';
import 'package:siga_app/properties/MyColors.dart';
import 'package:siga_app/properties/MyIcons.dart';
import 'BuzonDialog.dart';
import 'Mensaje.dart';

class Buzon extends StatelessWidget {
  List<MensajeModel> mensaje = [
    mensaje1,
    mensaje2,
    mensaje3,
    mensaje1,
    mensaje2,
    mensaje3,
    mensaje1,
    mensaje2,
    mensaje3
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: LightColor,
          iconTheme: IconThemeData(color: BlackIcon),
          actions: [
            Container(
                margin: EdgeInsets.all(8),
                child: Material(
                  child: InkWell(
                      onTap: () {
                        DialogMandarMensaje(context);
                      },
                      child: Ink(
                        width: MediaQuery.of(context).size.width / 2.4,
                        height: 40,
                        decoration: BoxDecoration(
                            color: SecondaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                        child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Nuevo Mensaje',
                                      style: TextStyle(
                                          color: LightColor, fontSize: 18),
                                    ),
                                    Icon(
                                      IconDesing.mensajes,
                                      color: LightColor,
                                      size: 17,
                                    )
                                  ]),
                            )),
                      )),
                ))
          ],
        ),
        body: Builder(
          builder: (context) {
            return ListView(
              padding: EdgeInsets.zero,
              children: [
                for (int i = 0; i < mensaje.length; i++)
                  CustomListTile(mensaje: mensaje[i])
              ],
            );
          },
        ));
  }
}
