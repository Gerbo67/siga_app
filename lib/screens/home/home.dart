import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:siga_app/models/home/publicacion_model.dart';
import 'package:siga_app/properties/MyColors.dart';

import 'BottomNavigationBar.dart';
import 'CardPublicacion.dart';
import 'HomeDraw.dart';

Home() {
  return HomeClass();
}

class HomeClass extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeClass> {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey();

  PublicacionModel publicacion1 = PublicacionModel(
    imagen: 'Perfil',
    nombre: 'Anonimo Perez Juarez',
    contenido: 'En la escuela los mejores temas a tratar son lo temas de suma importancia, los cuales reciben y coinciden en varias fracciones de información, las cuales nos hacen dirigir y persaudir personas, mencionando asi las mejores carreras que son las que en la institucion estan y pueden dirigirse para cosas sumamente importantes.'
  );

  PublicacionModel publicacion2 = PublicacionModel(
      imagen: 'Perfil2',
      nombre: 'Anonimo Rodriguez Lino',
      contenido: 'En la escuela los mejores temas a tratar son lo temas de suma importancia, los cuales reciben y coinciden en varias fracciones de información, las cuales nos hacen dirigir y persaudir personas, mencionando asi las mejores carreras que son las que en la institucion estan y pueden dirigirse para cosas sumamente importantes.'
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldkey,
        resizeToAvoidBottomPadding: false,
        endDrawer: HomeDrawer(_scaffoldkey),
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
                          elevation: 3.0,
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
                      margin: EdgeInsets.only(top: 15, bottom: 15),
                      width: MediaQuery.of(context).size.width / 1.1,
                      //color: Colors.red,
                      child: ListView(
                        padding: EdgeInsets.only(top: 8),
                        children: [
                          CardPublicacion(publicacion1),
                          CardPublicacion(publicacion2),
                          CardPublicacion(publicacion1),
                          CardPublicacion(publicacion2),
                          CardPublicacion(publicacion1),
                          CardPublicacion(publicacion2),
                        ],
                      ),
                    ),
                  )),
              //Barra baja de navegacion
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 2 // shadow direction: bottom right
                            )
                      ],
                    ),
                    child: HomeBottomNavigationBar(context,_scaffoldkey),
                  )),
            ],
          );
        }));
  }
}
