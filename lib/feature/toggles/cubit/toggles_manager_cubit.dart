import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'toggles_manager_state.dart';
part 'toggles_manager_cubit.freezed.dart';

class TogglesManagerCubit extends Cubit<TogglesManagerState> {
  TogglesManagerCubit() : super(TogglesManagerState.initial());
}
