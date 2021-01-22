import 'package:flutter/material.dart';
import 'package:siga_app/properties/MyColors.dart';

Widget CustomListTile() {
  return ListTile(
    onTap: (){
      print('hola');
    },
    leading: Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image(image: AssetImage('assets/images/Perfil2.jpg')),
      ),
      width: 50,
      height: 50,
    ),
    //title: Text('Animo Perez Juarez'),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Animo Perez Juarez',
            style: TextStyle(
                color: LetrasColor, fontWeight: FontWeight.bold, fontSize: 16)),
        Text('12:03', style: TextStyle(color: LetrasColor)),
      ],
    ),
    //subtitle: Text('Te queria pregunatr unas cosas'),
    subtitle: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Te queria preguntar unas cosas...',
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
                    '1',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ),
        )
      ],
    ),
  );
}
