import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Background.dart';

Widget Login() {
  return Scaffold(
    resizeToAvoidBottomPadding: false,
    body: CustomPaint(
      painter: Background(),
      child: Builder(builder: (context){
        return Center(
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/10),
                  child: Image(
                    image: AssetImage('assets/images/logout.png'),
                  )
              )
            ],
          ),
        );
      }),
    ),
  );
}
