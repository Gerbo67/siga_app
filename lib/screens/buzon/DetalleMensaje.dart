import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:siga_app/models/buzon/mensaje_model.dart';
import 'package:siga_app/properties/MyColors.dart';
import 'package:siga_app/properties/MyIcons.dart';

class DetalleMensaje extends StatefulWidget {
  final MensajeModel mensaje;

  DetalleMensaje({this.mensaje});

  @override
  _DetalleMensajeState createState() => _DetalleMensajeState();
}

class _DetalleMensajeState extends State<DetalleMensaje> {
  TextEditingController _MensajeController;
  int Length;

  @override
  void initState() {
    super.initState();
    _MensajeController = TextEditingController(text: "");
    Length = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: BlackIcon),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(IconDesing.salida),
          color: BlackIcon,
          iconSize: 16,
          padding: EdgeInsets.only(left: 10),
          onPressed: () {
            Navigator.pushNamed(context, 'buzon');
          },
        ),
        leadingWidth: 25,
        actions: [
          myPopMenu(),
        ],
        title: Row(
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image(
                    image: AssetImage(
                        'assets/images/' + widget.mensaje.imagen + '.jpg')),
              ),
              width: 45,
              height: 45,
              margin: EdgeInsets.only(right: 10),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: 200,
                    child: Text(widget.mensaje.nombre,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: LetrasColor)),
                  ),
                  Container(
                      width: 200,
                      child: Text("${widget.mensaje.numControl}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: BlackIcon))),
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //Contenido
          Expanded(
              flex: 7,
              child: Container(
                  //color: Colors.blue,
                  child: Center(
                      child: Text("Mensajes proximamente",
                          style: TextStyle(fontSize: 25, color: BackLetter))))),
          //Caja de escritura
          Expanded(
              flex: 1,
              child: Container(
                  child: Row(
                children: [
                  Expanded(
                      flex: 7,
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          controller: _MensajeController,
                          onChanged: (value) {
                            setState(() {
                              Length = value.length;
                            });
                          },
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            LengthLimitingTextInputFormatter(100),
                          ],
                          decoration: InputDecoration(
                            suffix: Text("$Length/100"),
                            filled: true,
                            fillColor: LightColor,
                            isDense: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide: new BorderSide(color: LightColor),
                                borderRadius: BorderRadius.circular(200)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: new BorderSide(color: LightColor),
                                borderRadius: BorderRadius.circular(200)),
                            hintStyle:
                                TextStyle(fontSize: 15, color: BackLetter),
                            hintText: 'Tus palabras van aqui..',
                          ),
                          validator: (value) {
                            if (value.isEmpty || value.length != 10) {
                              return 'No. Control Incorrecto';
                            }
                            return null;
                          },
                        ),
                      )),
                  //Enviar
                  Expanded(
                      flex: 1,
                      child: Container(
                          //color: Colors.orange,
                          child: Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(5 * 8.14),
                              child: IconButton(
                                icon: Icon(
                                  IconDesing.mensajes,
                                  color: PrimaryColor,
                                  size: 30,
                                ),
                              ))))
                ],
              )))
        ],
      ),
    );
  }
}

Widget myPopMenu() {
  return PopupMenuButton(
      onSelected: (value) {},
      itemBuilder: (context) => [
            PopupMenuItem(
              height: 35,
              value: 1,
              child: Text('Reportar',
                  style: TextStyle(color: IconColor, fontSize: 15)),
            ),
          ]);
}
