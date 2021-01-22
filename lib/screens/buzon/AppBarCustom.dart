import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siga_app/properties/MyColors.dart';
import 'package:siga_app/properties/MyIcons.dart';

import 'BuzonDialog.dart';

Widget CustomAppBar(context) {
  return Container(
      color: BackBuzon,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'principal'),
                child: Container(
                  padding: EdgeInsets.only(right: 20, top: 10, bottom: 20),
                  child: Icon(IconDesing.salida, color: BlackIcon, size: 16),
                )),
            Center(
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Nuevo Mensaje',
                                style:
                                    TextStyle(color: LightColor, fontSize: 18),
                              ),
                              Icon(
                                IconDesing.mensajes,
                                color: LightColor,
                                size: 17,
                              )
                            ]),
                      )),
                )),
              ),
            )
          ],
        ),
      ));
}
