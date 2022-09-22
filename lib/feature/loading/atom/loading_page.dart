



import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_base/core/widget/core_widget_atom.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CoreThemeBackgroundAtom(
      Center(child:Text("Processing"))
    );
  }
}