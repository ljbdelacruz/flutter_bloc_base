import 'package:flutter/material.dart';

class ColorUtil {

  Color? primaryColor;
  Color? secondaryColor;
  Color? errorColor;

  Color? textColor;
  Color? textDisabled;


  Color? disabledButton;

  ColorUtil({ this.primaryColor = Colors.black, this.secondaryColor = Colors.black, this.errorColor = Colors.red, this.textColor = Colors.black, this.textDisabled = Colors.grey, this.disabledButton = Colors.blueGrey });
}