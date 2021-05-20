import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siga_app/models/calificaciones/calificacion_model.dart';
import 'package:siga_app/properties/MyColors.dart';

Widget CardCalificacion(CalificacionModel calificacion) {
  return Container(
    margin: EdgeInsets.fromLTRB(2, 5, 2, 20),
    height: 170,
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
            flex: 2,
            child: Container(
                margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
                //color: Colors.red,
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: LineColor))),
                child: Container(
                  //color: Colors.yellow,
                  child: Row(
                    children: [
                      //Imagen
                      Expanded(
                          flex: 10,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image(
                                        image: AssetImage('assets/images/' +
                                            calificacion.imagen +
                                            '.jpg')),
                                  ),
                                  //color: Colors.teal,
                                  width: 35,
                                  height: 35,
                                  margin: EdgeInsets.only(right: 10),
                                ),
                              ),
                              //Nombre
                              Expanded(
                                flex: 4,
                                child: Container(
                                    padding: EdgeInsets.only(right: 30),
                                    //color: Colors.blue,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(calificacion.materia,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10,
                                                  color: LetrasColor)),
                                          Text(calificacion.nombre,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 9,
                                                  color: BlackIcon))
                                        ],
                                      ),
                                    )),
                              )
                            ],
                          )),
                      Expanded(
                          flex: 3,
                          child: Text(
                              "Calificacion final: " +
                                  calificacion.calificacionF.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: LetrasColor)))
                    ],
                  ),
                ))),
        //Contenido
        Expanded(
            flex: 5,
            child: Container(
                margin: EdgeInsets.all(8),
                //color: Colors.blue,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      //color: Colors.blue,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                //color: Colors.red,
                                child: Text(
                                  "Unidad 1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: LetrasColor),
                                ),
                              )),
                          Expanded(
                              flex: 8,
                              child: Container(
                                margin: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: SuccessCalificacion,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.25),
                                        blurRadius:
                                            2 // shadow direction: bottom right
                                        )
                                  ],
                                ),
                                width: 60,
                                child: Column(
                                  children: [
                                    Text(""),
                                    Text("U",
                                        style: TextStyle(
                                            color: LetrasColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25)),
                                    Text("\n10.0",
                                        style: TextStyle(
                                            color: LetrasColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12))
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      //color: Colors.blue,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                //color: Colors.red,
                                child: Text(
                                  "Unidad 2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: LetrasColor),
                                ),
                              )),
                          Expanded(
                              flex: 8,
                              child: Container(
                                margin: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: SuccessCalificacion,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.25),
                                        blurRadius:
                                        2 // shadow direction: bottom right
                                    )
                                  ],
                                ),
                                width: 60,
                                child: Column(
                                  children: [
                                    Text(""),
                                    Text("R1",
                                        style: TextStyle(
                                            color: LetrasColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25)),
                                    Text("\n8.0",
                                        style: TextStyle(
                                            color: LetrasColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12))
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      //color: Colors.blue,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                //color: Colors.red,
                                child: Text(
                                  "Unidad 3",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: LetrasColor),
                                ),
                              )),
                          Expanded(
                              flex: 8,
                              child: Container(
                                margin: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: FailCalificacion,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.25),
                                        blurRadius:
                                        2 // shadow direction: bottom right
                                    )
                                  ],
                                ),
                                width: 60,
                                child: Column(
                                  children: [
                                    Text(""),
                                    Text("R2",
                                        style: TextStyle(
                                            color: LetrasColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25)),
                                    Text("\n7.0",
                                        style: TextStyle(
                                            color: LetrasColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12))
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      //color: Colors.blue,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                //color: Colors.red,
                                child: Text(
                                  "Unidad 4",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: LetrasColor),
                                ),
                              )),
                          Expanded(
                              flex: 8,
                              child: Container(
                                margin: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.25),
                                        blurRadius:
                                        2 // shadow direction: bottom right
                                    )
                                  ],
                                ),
                                width: 60,
                                child: Column(
                                  children: [
                                    Text(""),
                                    Text("U",
                                        style: TextStyle(
                                            color: LetrasColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25)),
                                    Text("\n0.0",
                                        style: TextStyle(
                                            color: LetrasColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12))
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      //color: Colors.blue,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                //color: Colors.red,
                                child: Text(
                                  "Unidad 5",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: LetrasColor),
                                ),
                              )),
                          Expanded(
                              flex: 8,
                              child: Container(
                                margin: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.25),
                                        blurRadius:
                                        2 // shadow direction: bottom right
                                    )
                                  ],
                                ),
                                width: 60,
                                child: Column(
                                  children: [
                                    Text(""),
                                    Text("U",
                                        style: TextStyle(
                                            color: LetrasColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25)),
                                    Text("\n0.0",
                                        style: TextStyle(
                                            color: LetrasColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12))
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      //color: Colors.blue,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                //color: Colors.red,
                                child: Text(
                                  "Remedial",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: LetrasColor),
                                ),
                              )),
                          Expanded(
                              flex: 8,
                              child: Container(
                                margin: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: SuccessCalificacion,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.25),
                                        blurRadius:
                                        2 // shadow direction: bottom right
                                    )
                                  ],
                                ),
                                width: 60,
                                child: Column(
                                  children: [
                                    Text(""),
                                    Text("RG",
                                        style: TextStyle(
                                            color: LetrasColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25)),
                                    Text("\n8.0",
                                        style: TextStyle(
                                            color: LetrasColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12))
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ))),
      ],
    ),
  );
}
