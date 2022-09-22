import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_base/common/di/injection.dart';
import 'package:flutter_bloc_base/feature/error/atom/error_template.dart';
import 'package:flutter_bloc_base/feature/loading/atom/loading_page.dart';
import 'package:flutter_bloc_base/feature/login/atom/login_page.dart';
import 'package:flutter_bloc_base/feature/splash/atom/splash_template.dart';
import 'package:get_it/get_it.dart';

import '../feature/dashboard/atom/dashboard_page.dart';
import 'page_manager_cubit/page_manager_cubit.dart';

class AppRouter {
  static const root = '/';
  static const fullscreenFlowEntrypoint = 'fullscreenFlowEntrypoint';
  static const login = "loginScreen";
  static const home = 'homeScreen';


  static PageRoute<Object> onGenerateRoute(RouteSettings settings) {
    final serviceLocator = GetIt.instance.get<InjectionDI>();

    switch (settings.name!) {
      case AppRouter.home:
        serviceLocator.getPageManagerCubit().dashboard();
        break;
      case AppRouter.login:
        serviceLocator.getPageManagerCubit().login();
        break;
      default:
        serviceLocator.getPageManagerCubit().splash();
        break;
    }

    return MaterialPageRoute<Object>(
      settings: settings,
      builder: (_) => BlocProvider<PageManagerCubit>(
          create: (_) => serviceLocator.getPageManagerCubit(),
          child: BlocBuilder<PageManagerCubit, PageManagerState>(
              builder: (c, state) {
            return state.when(
                initial: () => SplashPage(),
                login:  () => LoginPage(),
                dashboard: () => DashboardPage(),
                error: () => ErrorPage(),
                loading: () => LoadingPage());
          })),
    );
  }
}