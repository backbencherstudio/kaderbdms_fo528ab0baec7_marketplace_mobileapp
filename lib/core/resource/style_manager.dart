import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(
  double fontSize,
  String fontFamily,
  FontWeight fontWeight,
  Color color,
) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    fontWeight: fontWeight,
  );
}

//light text style
TextStyle getLightStyle({
  double fontSize = FontSize.s12,
  FontWeight fontWeight = FontWeightManager.light300,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily, fontWeight, color);
}

//regular  text style
TextStyle getRegularStyle({
  double fontSize = FontSize.s12,
  FontWeight fontWeight = FontWeightManager.regural400,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily, fontWeight, color);
}

//mediun text style
TextStyle getMediunStyle({
  double fontSize = FontSize.s12,
  FontWeight fontWeight = FontWeightManager.medium500,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily, fontWeight, color);
}

//semi bold text style
TextStyle getSemiBoldStyle({
  double fontSize = FontSize.s12,
  FontWeight fontWeight = FontWeightManager.semiBold600,
  required Color color,
  required String fontFamily,
}) {
  return _getTextStyle(fontSize, fontFamily, fontWeight, color);
}

// text_styles.dart
TextStyle customTextStyle({
  required String fontFamily,
  required FontWeight fontWeight,
  required double fontSize,
  required Color color,
  final Color? textColor,
}) {
  return TextStyle(
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    fontSize: fontSize,
    color: color,
  );
}

//bold text style
TextStyle getBoldStyle({
  double fontSize = FontSize.s18,
  FontWeight fontWeight = FontWeightManager.bold700,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily, fontWeight, color);
}
