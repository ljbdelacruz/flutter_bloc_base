part of 'toggles_manager_cubit.dart';

@freezed
class TogglesManagerState with _$TogglesManagerState {
  const factory TogglesManagerState.initial() = _Initial;

  

  const factory TogglesManagerState.loading() = _Loading;
  const factory TogglesManagerState.error() = _Error;
}
