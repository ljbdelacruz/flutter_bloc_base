import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'page_manager_state.dart';
part 'page_manager_cubit.freezed.dart';


class PageManagerCubit extends Cubit<PageManagerState> {
  PageManagerCubit() : super(PageManagerState.initial());

  void error() {
    emit(PageManagerState.error());
  }

  void loading() {
    emit(PageManagerState.loading());
  }

  void login() {
    emit(PageManagerState.login());
  }

  void dashboard() {
    emit(PageManagerState.dashboard());
  }

  void splash() {
    emit(PageManagerState.initial());
    Timer(Duration(seconds: 5), () {
      emit(PageManagerState.login());
    });
  }

}
