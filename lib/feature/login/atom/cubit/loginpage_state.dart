part of 'loginpage_cubit.dart';

@freezed
class LoginpageState with _$LoginpageState {
  const factory LoginpageState.initial() = _Initial;
  const factory LoginpageState.error() = _Error;
  const factory LoginpageState.loading() = _Loading;
}
