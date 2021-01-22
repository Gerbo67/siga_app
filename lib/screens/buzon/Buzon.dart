import 'package:flutter/material.dart';
import 'package:siga_app/properties/MyColors.dart';
import 'package:siga_app/properties/MyIcons.dart';
import 'package:siga_app/screens/home/Home.dart';

import 'AppBarCustom.dart';
import 'Mensaje.dart';

Widget Buzon() {
  return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Builder(
        builder: (context) {
          return Column(children: [
            Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    children: [
                      Expanded(flex: 3, child: Container()),
                      Expanded(
                        flex: 7,
                        child: CustomAppBar(context),
                      ),
                    ],
                  ),
                )),
            Expanded(
              flex: 15,
              child: Container(
                //color:Colors.pink,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                    CustomListTile(),
                  ],
                ),
              ),
            )
          ]);
        },
      ));
}
