import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:siga_app/properties/MyColors.dart';
import 'package:siga_app/properties/MyIcons.dart';
import 'package:siga_app/screens/calificaciones/Calificaciones.dart';

Widget HomeDrawer(context,_scaffoldkey) {
  return Drawer(
    child: Column(
      children: [
        Expanded(
            flex: 11,
            child: Container(
              child: Stack(
                children: [
                  Container(
                      height: 170,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/images/banner.png"),
                        fit: BoxFit.cover,
                      ))),
                  Positioned(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: Image(
                        image: AssetImage('assets/images/Perfil.jpg'),
                        width: 120,
                        height: 120,
                      ),
                    ),
                    bottom: 65,
                    left: 95,
                  ),
                  Positioned(
                    child: Text(
                      "Anonimo Perez Juaréz\n1218100471",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 17,
                          color: PrimaryLetras,
                          fontWeight: FontWeight.w400,
                          height: 1.3),
                    ),
                    bottom: 20,
                    left: 85,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: LineColor))),
                  )
                ],
              ),
            )),
        Expanded(
          flex: 12,
          child: Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, 'calificaciones'),
                      child: Row(
                        children: [
                          Text(
                            "Calificaciones",
                            style: TextStyle(fontSize: 17, color: BlackIcon),
                          ),
                          Icon(
                            IconDesing.cali_icon,
                            color: BlackIcon,
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Horario",
                          style: TextStyle(fontSize: 17, color: BlackIcon),
                        ),
                        Icon(
                          IconDesing.calen_icon,
                          color: BlackIcon,
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Noticias",
                          style: TextStyle(fontSize: 17, color: BlackIcon),
                        ),
                        Icon(
                          IconDesing.noticias_icon,
                          color: BlackIcon,
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Eventos",
                          style: TextStyle(fontSize: 17, color: BlackIcon),
                        ),
                        Icon(
                          IconDesing.eventos_icon,
                          color: BlackIcon,
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Comentarios",
                          style: TextStyle(fontSize: 17, color: BlackIcon),
                        ),
                        Icon(
                          IconDesing.comenta_icon,
                          color: BlackIcon,
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Denuncias",
                          style: TextStyle(fontSize: 17, color: BlackIcon),
                        ),
                        Icon(
                          IconDesing.denuncia_icon,
                          color: BlackIcon,
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Información general",
                          style: TextStyle(fontSize: 17, color: BlackIcon),
                        ),
                        Icon(
                          IconDesing.informacion,
                          color: BlackIcon,
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
            flex: 2,
            child: Container(
              color: BackDraw,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(IconDesing.salida,
                              color: BlackIcon, size: 16),
                          alignment: Alignment.centerLeft,
                          onPressed: () {
                            _scaffoldkey.currentState.openDrawer();
                          },
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text("Cerrar Sesión",
                                  style: TextStyle(color: BlackIcon)),
                              Icon(IconDesing.cerrar_icon, color: BlackIcon)
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
      ],
    ),
  );
}
