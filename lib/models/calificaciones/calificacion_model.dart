class CalificacionModel {
  final String imagen;
  final String nombre;
  final String materia;
  final double calificacionF;

  CalificacionModel(
      {this.imagen, this.nombre, this.materia, this.calificacionF});
}

CalificacionModel mensaje1 = CalificacionModel(
    imagen: 'Perfil',
    materia: 'Extracción de conocimiento en Base de datos',
    nombre: 'Anonimo Torrez Yañez',
    calificacionF: 8.6);

CalificacionModel mensaje2 = CalificacionModel(
    imagen: 'Perfil',
    materia: 'Equipos de alto redimiento',
    nombre: 'Anonimo Suarez Olivo',
    calificacionF: 8.6);

CalificacionModel mensaje3 = CalificacionModel(
    imagen: 'Perfil2',
    materia: 'Desarrollo Web Integral',
    nombre: 'Anonimo Domenzain',
    calificacionF: 8.6);
