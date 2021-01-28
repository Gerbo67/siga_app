import 'package:flutter/material.dart';
import 'package:siga_app/models/buzon/mensaje_model.dart';
import 'package:siga_app/properties/MyColors.dart';
import 'package:siga_app/screens/buzon/DetalleMensaje.dart';


class CustomListTile extends StatelessWidget{
  final MensajeModel mensaje;

  CustomListTile({this.mensaje});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
        return DetalleMensaje(mensaje: mensaje);
        }));
      },
      leading: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image(image: AssetImage('assets/images/'+mensaje.imagen+'.jpg')),
        ),
        width: 50,
        height: 50,
      ),
      //title: Text('Animo Perez Juarez'),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(mensaje.nombre,
              style: TextStyle(
                  color: LetrasColor, fontWeight: FontWeight.bold, fontSize: 16)),
          Text(mensaje.hora, style: TextStyle(color: LetrasColor)),
        ],
      ),
      //subtitle: Text('Te queria pregunatr unas cosas'),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(mensaje.contenido,
              style: TextStyle(color: LetrasColor, fontSize: 16)),
          Container(
            width: 35,
            height: 20,
            child: Center(
              child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: PrimaryColor,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      mensaje.nuevos,
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }

}