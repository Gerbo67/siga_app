import 'dart:ui';

Color PrimaryColor = _colorFromHex("#2A4DBD");
Color SecondaryColor = _colorFromHex("#00A887");
Color cardColor = _colorFromHex("#FCFCFC");
Color darkColor = _colorFromHex("#737373");
Color LinkColor = _colorFromHex("#008FF6");
Color LightColor = _colorFromHex("#F7F7F7");
Color BackLetter = _colorFromHex("#C4C4C4");
Color BlackIcon = _colorFromHex("#6C6C6C");
Color CorrectoColor = _colorFromHex("#00A825");
Color LetrasColor = _colorFromHex("#414141");
Color LineColor = _colorFromHex("#DDDDDD");
Color IconColor = _colorFromHex("#606060");
Color PrimaryLetras = _colorFromHex("#181A2F");
Color BackDraw = _colorFromHex("#EBEBEB");
Color BackBuzon = _colorFromHex("#F2F2F2");
Color SuccessCalificacion = _colorFromHex("#99FFEB");
Color FailCalificacion = _colorFromHex("#FF9999");
Color OverlayColor = _colorFromHex("#000000AA");

//Funcion para leer hexadecimal
Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}
