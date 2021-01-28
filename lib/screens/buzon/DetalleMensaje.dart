import 'package:flutter/material.dart';
import 'package:siga_app/models/buzon/mensaje_model.dart';
import 'package:siga_app/properties/MyColors.dart';
import 'package:siga_app/properties/MyIcons.dart';

class DetalleMensaje extends StatelessWidget{

  final MensajeModel mensaje;

  DetalleMensaje({this.mensaje});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       actionsIconTheme: IconThemeData(color: BlackIcon),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(IconDesing.salida),color: BlackIcon,iconSize: 16,padding: EdgeInsets.only(left: 10),onPressed: (){
          Navigator.pushNamed(context, 'buzon');
        },),
        leadingWidth: 25,
        actions: [
          myPopMenu(),
        ],
        title: Row(
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image(image: AssetImage('assets/images/'+mensaje.imagen+'.jpg')),
              ),
              width: 45,
              height: 45,
              margin: EdgeInsets.only(right: 10),
            ),
            Container(
              height: 25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 200,child: Text(mensaje.nombre,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: LetrasColor)),),
                Container(width: 200,child: Text("${mensaje.numControl}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: BlackIcon))),

              ],
            ),)
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(flex:7,child: Container(color:Colors.blue)),
          Expanded(flex:1,child: Container(color:Colors.pink))
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