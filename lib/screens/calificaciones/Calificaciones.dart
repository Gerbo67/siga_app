import 'package:flutter/material.dart';
import 'package:siga_app/models/calificaciones/calificacion_model.dart';
import 'package:siga_app/properties/MyColors.dart';
import 'package:siga_app/properties/MyIcons.dart';

import 'CardCalificacion.dart';

Calificaciones() {
  return CalificacionesClass();
}

class CalificacionesClass extends StatefulWidget {
  @override
  CalificacionesState createState() => CalificacionesState();
}

class CalificacionesState extends State<CalificacionesClass> {
  String dropdownValue = 'Selecciona un cuatrimestre';

  List<CalificacionModel> calificaciones = [
    mensaje1,
    mensaje2,
    mensaje3,
    mensaje1,
    mensaje2,
    mensaje3,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: LightColor,
          leading: IconButton(
            icon: Icon(IconDesing.salida),
            color: BlackIcon,
            iconSize: 16,
            onPressed: () {
              Navigator.pushNamed(context, 'principal');
            },
          ),
          title: Text("Calificaciones",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: LetrasColor)),
        ),
        body: Builder(
          builder: (context) {
            return Container(
              //color: Colors.orange,
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      //color: Colors.green,
                      height: 60,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                //color: Colors.pinkAccent,
                                child: Text(
                                  "Cuatrimestre: ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: LetrasColor),
                                ),
                              )),
                          Expanded(
                              flex: 4,
                              child: Container(
                                  color: BackBuzon,
                                  height: 30,
                                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: Center(
                                    child: DropdownButton(
                                      dropdownColor: BackBuzon,
                                      isExpanded: true,
                                      value: dropdownValue,
                                      iconSize: 15,
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: BackLetter,
                                      ),
                                      style: TextStyle(color: BlackIcon),
                                      underline: Container(
                                        height: 0,
                                      ),
                                      onChanged: (String newValue) {
                                        setState(() {
                                          dropdownValue = newValue;
                                        });
                                        print(newValue);
                                      },
                                      items: <String>[
                                        'Selecciona un cuatrimestre',
                                        'GDGS1011',
                                        'GDGS1012',
                                        'GDGS1013',
                                        'GDGS1014',
                                        'GDGS1015',
                                        'GDGS1016',
                                        'GDGS1017',
                                        'GDGS1018',
                                        'GDGS1019',
                                        'GDGS1101',
                                        'GDGS1111',
                                        'GDGS1121',
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  )))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 8,
                      child: Center(
                        child: Container(
                          //color: Colors.red,
                          child: ListView(
                            children: [
                              for (int i = 0; i < calificaciones.length; i++)
                                CardCalificacion(calificaciones[i])
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            );
          },
        ));
  }
}
