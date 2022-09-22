import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_base/common/di/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'loginpage_state.dart';
part 'loginpage_cubit.freezed.dart';

class LoginpageCubit extends Cubit<LoginpageState> {
  LoginpageCubit() : super(LoginpageState.initial());

  final serviceLocator = GetIt.instance.get<InjectionDI>();

  loginEvent(String email, String password) {
    emit(LoginpageState.loading());
    Timer(Duration(seconds: 5), () {
      emit(LoginpageState.initial());
      serviceLocator.getPageManagerCubit().dashboard();
    });
  }
}
