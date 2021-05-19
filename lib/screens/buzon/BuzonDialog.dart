import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:siga_app/properties/MyColors.dart';
import 'package:siga_app/properties/MyIcons.dart';

DialogMandarMensaje(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return MandarMensaje();
      });
}

class MandarMensaje extends StatefulWidget {
  @override
  _MandarMensajeState createState() => new _MandarMensajeState();
}

class _MandarMensajeState extends State<MandarMensaje> {

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
                    child: Container(
                        alignment: Alignment.center,
                        //color: Colors.orange,
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: 60,
                        child: Material(
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
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
                              hintText: 'No.Control del destinatario',
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
                        ))
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
                        hintText: 'Tus palabras van aqui...',
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
                    margin: EdgeInsets.only(right: 10,left: 10,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context, false);
                          },
                          child: Container(
                            child: Icon(
                              IconDesing.salida,
                              size: 15,
                              color: BlackIcon,
                            ),
                          ),
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
                                                'Enviar',
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
