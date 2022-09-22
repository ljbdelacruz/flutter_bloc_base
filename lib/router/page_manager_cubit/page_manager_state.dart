part of 'page_manager_cubit.dart';

@freezed
class PageManagerState with _$PageManagerState {
  const factory PageManagerState.initial() = _Initial;
  const factory PageManagerState.error() = _Error;
  const factory PageManagerState.loading() = _Loading;
  const factory PageManagerState.login() = _Login;
  const factory PageManagerState.dashboard() = _Dashboard;
}
