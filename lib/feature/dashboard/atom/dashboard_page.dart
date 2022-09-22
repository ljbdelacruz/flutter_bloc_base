




import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_base/core/const/constants+string.dart';
import 'package:flutter_bloc_base/core/util/size_util.dart';
import 'package:flutter_bloc_base/core/widget/core_widget_atom.dart';
import 'package:google_ui/google_ui.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CoreThemeBackgroundAtom(
      Center(child:Text("Dashboard Page")),
      header: header(),
      headerHeight: SizeUtil.headerHeightDashboard(context),
    );
  }



  Widget header() {
    return GSearchAppBar(
        title: ConstantsString.DASHBOARDSEARCHHEADERTITLE,
        hintText: ConstantsString.DASHBOARDSEARCHHEADERHINT,
    );
  }
}