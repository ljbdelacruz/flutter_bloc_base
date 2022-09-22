


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



// Background Widgets

class CoreThemeBackgroundAtom extends StatelessWidget {
  final double headerHeight;
  final Widget? footer;
  final Widget? drawer;
  final Widget? endDrawer;
  final Widget? header;
  final Color bgColor;
  final Widget content;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  CoreThemeBackgroundAtom(this.content,
      {this.header,
      this.headerHeight = 0,
      this.footer,
      this.drawer,
      this.endDrawer,
      this.bgColor = Colors.white,
      this.scaffoldKey});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(headerHeight),
          child: header ?? Container()),
      body: Container(
          color: bgColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: content),
      bottomNavigationBar: footer,
      drawer: drawer,
      endDrawer: endDrawer,
    ));
  }
}

