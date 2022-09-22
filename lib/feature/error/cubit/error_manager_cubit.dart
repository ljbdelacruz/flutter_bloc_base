import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_manager_state.dart';
part 'error_manager_cubit.freezed.dart';

class ErrorManagerCubit extends Cubit<ErrorManagerState> {
  ErrorManagerCubit() : super(ErrorManagerState.noInternetConnection());
}
