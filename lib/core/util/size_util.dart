


import 'package:flutter/cupertino.dart';

class SizeUtil {

  static double getButtonSizeMediumWidth(BuildContext context) {
    return MediaQuery.of(context).size.width / 2;
  }
  static double getButtonSizeMediumHeight(BuildContext context) {
    return MediaQuery.of(context).size.height / 4;
  }


  // progress dialog sizings login
  static double progressDialogHeightLogin(BuildContext context) { 
    return MediaQuery.of(context).size.height * 0.05;
  }
  static double progressDialogPaddingLogin(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.45;
  }

  //dashboard
  static double headerHeightDashboard(BuildContext context) { 
    return MediaQuery.of(context).size.height * 0.1;
  }



  //padding horizontal

  //padding vertical
  static double paddingVerticalNormal(BuildContext context) { 
    return MediaQuery.of(context).size.height * 0.02;
  }


}