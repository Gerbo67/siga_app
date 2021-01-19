import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siga_app/properties/MyColors.dart';
import 'package:siga_app/properties/MyIcons.dart';

Widget HomeBottomNavigationBar() {
  return Container(
      color: cardColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 55,
                  height: 55,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(IconDesing.mensajes, color: PrimaryColor, size: 25),
                      Text('Mensajes', style: TextStyle(color: PrimaryColor))
                    ],
                  ),
                ),
                Container(
                  width: 55,
                  height: 55,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(IconDesing.add_circle_outline,
                          color: PrimaryColor, size: 30),
                      Text('Publica', style: TextStyle(color: PrimaryColor))
                    ],
                  ),
                ),


                Container(
                  width: 55,
                  height: 55,
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 2.5, color: PrimaryColor),
                          borderRadius: BorderRadius.all(Radius.circular(
                              50.0) //                 <--- border radius here
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(1000),
                          child: Image(
                            image: AssetImage('assets/images/Perfil.jpg'),
                            width: 25,
                            height: 25,
                          ),
                        ),
                      ),
                      Text('Menú', style: TextStyle(color: PrimaryColor))
                    ],
                  ),
                ),


              ],
            ),
          )
        ],
      ));
}