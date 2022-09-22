import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'common/di/injection.dart';
import 'router/router.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({ Key? key }) : super(key: key);

  final getIt = GetIt.instance;
  setupDI() {
    try {
      getIt.registerSingleton<InjectionDI>(InjectionDI());
    } catch(e) {
      
    }
  }

  @override
  Widget build(BuildContext context) {
    setupDI();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRouter.fullscreenFlowEntrypoint,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
