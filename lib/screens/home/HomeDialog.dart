import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:siga_app/properties/MyColors.dart';
import 'package:siga_app/properties/MyIcons.dart';

DialogCrearPublicacion(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return CrearPublicacion();
      });
}

class CrearPublicacion extends StatefulWidget {
  @override
  _CrearPublicacionState createState() => new _CrearPublicacionState();
}

class _CrearPublicacionState extends State<CrearPublicacion> {
  String dropdownValue = 'Edificio';

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      contentPadding: EdgeInsets.all(0),
      children: [
        Container(
          height: 250,
          child: Column(
            children: [
              //Cabecera
              Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: LineColor))),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: Container(
                                //color: Colors.yellow,
                                child: Row(
                              children: [
                                //Imagen
                                Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/images/Perfil.jpg')),
                                  ),
                                  width: 35,
                                  height: 35,
                                ),
                                //Nombre
                                Container(
                                  margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                  child: Text(
                                    "Anonimo Perez Juaréz",
                                    style: TextStyle(color: LetrasColor),
                                  ),
                                )
                              ],
                            ))),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: BackLetter, width: 1)),
                                  height: 30,
                                  width: 85,
                                  //color: Colors.red,
                                  child: Center(
                                    child: DropdownButton(
                                      value: dropdownValue,
                                      iconSize: 15,
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: BackLetter,
                                      ),
                                      style: TextStyle(color: BackLetter),
                                      underline: Container(
                                        height: 0,
                                      ),
                                      onChanged: (String newValue) {
                                        setState(() {
                                          dropdownValue = newValue;
                                        });
                                      },
                                      items: <String>['Edificio', 'Global']
                                          .map<DropdownMenuItem<String>>(
                                              (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              //Input
              Expanded(
                  flex: 7,
                  child: Container(
                    color: LightColor,
                    margin: EdgeInsets.all(10),
                    child: TextFormField(
                      maxLines: 10,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
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
                        hintStyle: TextStyle(fontSize: 12, color: BackLetter),
                        hintText: 'Escribe tu numero de control...',
                      ),
                      validator: (value) {
                        if (value.isEmpty || value.length != 10) {
                          return 'No. Control Incorrecto';
                        }
                        return null;
                      },
                    ),
                  )),
              //Footer
              Expanded(
                  flex: 2,
                  child: Container(
                    //color:Colors.red,
                    margin: EdgeInsets.only(right: 10, left: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            IconDesing.salida,
                            size: 15,
                            color: BlackIcon,
                          ),
                          alignment: Alignment.centerLeft,
                          onPressed: () {
                            Navigator.pop(context, false);
                          },
                        ),
                        Container(
                            width: 100,
                            height: 28,
                            child: Center(
                                child: Container(
                              child: Material(
                                  child: InkWell(
                                onTap: () {
                                  /*
                                      if (_formCorreo.currentState
                                          .validate()) {
                                        setState(() {
                                          visibilityDialog = false;
                                        });
                                      }


                                      */
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
                                        'Publicar',
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
                  )),
            ],
          ),
        )
      ],
    );
  }
}
