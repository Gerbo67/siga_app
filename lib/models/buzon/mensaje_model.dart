class MensajeModel {
  final String imagen;
  final String nombre;
  final String contenido;
  final String hora;
  final String nuevos;
  final int numControl;

  MensajeModel({this.imagen, this.nombre, this.contenido,this.hora,this.nuevos,this.numControl});
}

MensajeModel mensaje1 = MensajeModel(
    imagen: 'Perfil',
    nombre: 'Anonimo Perez Juarez',
    hora: '22:03',
    contenido: 'Te queria preguntar unas cosas...',
    nuevos: '1',
    numControl: 1218100471
);

MensajeModel mensaje2 = MensajeModel(
    imagen: 'Perfil2',
    nombre: 'Anonimo Rodriguez Lino',
    hora: 'Miercoles',
    contenido: 'Las frutas son rojas sabias?...',
    nuevos: '5',
    numControl: 1218100472
);

MensajeModel mensaje3 = MensajeModel(
    imagen: 'Perfil',
    nombre: 'Anonimo Rodriguez Lino2',
    hora: '21/10/19',
    contenido: 'Me gustaria unirme al club...',
    nuevos: '99',
    numControl: 1218100473
);