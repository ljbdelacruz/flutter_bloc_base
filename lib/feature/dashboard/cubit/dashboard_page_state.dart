part of 'dashboard_page_cubit.dart';

@freezed
class DashboardPageState with _$DashboardPageState {
  const factory DashboardPageState.initial() = _Initial;
  

  const factory DashboardPageState.error() = _Error;
  const factory DashboardPageState.loading() = _Loading;
}
