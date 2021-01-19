import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:siga_app/properties/MyColors.dart';

import 'CardPublicacion.dart';

Widget Home() {
  return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Builder(builder: (context) {
        return Column(
          children: [
            //Busqueda Input
            Expanded(
                flex: 1,
                child: Center(
                  child: Container(
                      alignment: Alignment.bottomCenter,
                      //color: Colors.orange,
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: 60,
                      child: Material(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2)),
                        child: TextFormField(
                          textAlign: TextAlign.center,
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
                            hintStyle:
                                TextStyle(fontSize: 15, color: BackLetter),
                            hintText: 'Escribe aqui el nombre del estudiante',
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              size: 25,
                              color: BackLetter,
                            ),
                            prefixIconConstraints:
                                BoxConstraints(minWidth: 40, minHeight: 30),
                          ),
                          validator: (value) {
                            if (value.isEmpty || value.length != 10) {
                              return 'No. Control Incorrecto';
                            }
                            return null;
                          },
                        ),
                      )),
                )),
            //Publicaciones
            Expanded(
                flex: 9,
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(top:15,bottom: 15),
                    width: MediaQuery.of(context).size.width / 1.1,
                    color: Colors.red,
                    child: ListView(
                      padding: EdgeInsets.only(top:8),
                      children: [
                        CardPublicacion(),
                        CardPublicacion(),
                        CardPublicacion(),
                        CardPublicacion(),
                        CardPublicacion(),
                      ],
                    ),
                  ),
                )),
            //Barra baja de navegacion
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.orange,
                )),
          ],
        );
      }));
}
