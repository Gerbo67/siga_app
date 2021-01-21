import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siga_app/models/home/publicacion_model.dart';
import 'package:siga_app/properties/MyColors.dart';

Widget CardPublicacion(PublicacionModel publicacion) {
  return Container(
    margin: EdgeInsets.fromLTRB(5, 0, 5, 25),
    height: 220.0,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(2.0),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 2 // shadow direction: bottom right
            )
      ],
    ),
    child: Column(
      children: <Widget>[
        //Encabezado
        Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
              //color: Colors.red,
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: LineColor))),
              child: Row(
                children: [
                  //Imagen y Nombre
                  Expanded(
                      flex: 10,
                      child: Container(
                        //color: Colors.yellow,
                        child: Row(
                          children: [
                            //Imagen
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image(
                                    image:
                                        AssetImage('assets/images/'+ publicacion.imagen +'.jpg')),
                              ),
                              width: 35,
                              height: 35,
                            ),
                            //Nombre
                            Container(
                              margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
                              child: Text(publicacion.nombre,
                                style: TextStyle(color: LetrasColor),
                              ),
                            )
                          ],
                        ),
                      )),
                  //Puntos de menu
                  Expanded(
                      flex: 1,
                      child: Container(
                          child: Stack(
                        children: <Widget>[
                          Positioned(
                            child: myPopMenu(),
                            left: -9,
                          )
                        ],
                      )))
                ],
              ),
            )),
        //Contenido
        Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(8), //color: Colors.blue,
              child: Text(publicacion.contenido,
                //"En la escuela los mejores temas a tratar son lo temas de suma importancia, los cuales reciben y coinciden en varias fracciones de información, las cuales nos hacen dirigir y persaudir personas, mencionando asi las mejores carreras que son las que en la institucion estan y pueden dirigirse para cosas sumamente importantes.",
                style: TextStyle(color: LetrasColor, height: 1.3),
              ),
            )),
        //Pie de card
        Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
              //color: Colors.green,
              decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: LineColor))),
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Container(
                        //color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.all(5),
                                child: Icon(
                                  //Icons.favorite_rounded
                                  Icons.favorite_outline_sharp,
                                  color: IconColor,
                                  size: 22,
                                )),
                            Text(
                              "Me gusta",
                              style: TextStyle(color: IconColor, fontSize: 15),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                          //color: Colors.blue,
                          child: Container(
                        //color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.all(5),
                                child: Icon(
                                  //Icons.favorite_rounded
                                  Icons.comment_outlined,
                                  color: IconColor,
                                  size: 22,
                                )),
                            Text(
                              "Comentar",
                              style: TextStyle(color: IconColor, fontSize: 15),
                            )
                          ],
                        ),
                      ))),
                ],
              ),
            ))
      ],
    ),
  );
}

Widget myPopMenu() {
  return PopupMenuButton(
      onSelected: (value) {},
      itemBuilder: (context) => [
            PopupMenuItem(
              height: 35,
              value: 0,
              child: Text('Mensaje',
                  style: TextStyle(color: IconColor, fontSize: 15)),
            ),
            PopupMenuItem(
              height: 35,
              value: 1,
              child: Text('Reportar',
                  style: TextStyle(color: IconColor, fontSize: 15)),
            ),
          ]);
}
