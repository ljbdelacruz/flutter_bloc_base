



import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc_base/core/widget/core_widget_atom.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CoreThemeBackgroundAtom(
      Center(child:Text("Error"))
    );
  }
}


class NoInternetConnectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}