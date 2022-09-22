


import 'package:flutter_bloc_base/core/util/color_util.dart';
import 'package:flutter_bloc_base/feature/login/atom/cubit/loginpage_cubit.dart';
import 'package:flutter_bloc_base/feature/toggles/cubit/toggles_manager_cubit.dart';
import 'package:flutter_bloc_base/router/page_manager_cubit/page_manager_cubit.dart';
import 'package:get_it/get_it.dart';

class InjectionDI {
  final getIt = GetIt.instance;
  InjectionDI() {
    setup();
  }

  setup() {
    try {
      // util
      getIt.registerLazySingleton(() => ColorUtil());


      // pages
      getIt.registerSingleton<PageManagerCubit>(PageManagerCubit());
      getIt.registerLazySingleton(() => LoginpageCubit());
      getIt.registerLazySingleton(() => TogglesManagerCubit());

    } catch (error) {

    }

  }

  PageManagerCubit getPageManagerCubit() {
    return getIt.get<PageManagerCubit>();
  }

  LoginpageCubit getLoginPageCubit() {
    return getIt.get<LoginpageCubit>();
  }

  TogglesManagerCubit getTogglesManagerCubit() {
    return getIt.get<TogglesManagerCubit>();
  }



  //util 
  ColorUtil getColorUtil() {
    return getIt.get<ColorUtil>();
  }
}