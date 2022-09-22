import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_base/core/widget/core_widget_atom.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CoreThemeBackgroundAtom(
      Center(child:Image.asset("assets/logo.png"))
    );
  }
}