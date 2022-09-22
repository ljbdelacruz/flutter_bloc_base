import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_manager_state.dart';
part 'loading_manager_cubit.freezed.dart';

class LoadingManagerCubit extends Cubit<LoadingManagerState> {
  LoadingManagerCubit() : super(LoadingManagerState.initial());
}
