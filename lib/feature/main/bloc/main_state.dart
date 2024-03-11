part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(0) int index,
    @Default(true) bool fullDashboard,
    @Default(true) bool defaultVersion,
  }) = _MainState;
}
