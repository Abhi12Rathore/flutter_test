part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.changeDashboard({
    @Default(true) bool fullDashboard,
    @Default(true) bool defaultVersion,
  }) = _MainEventChangeDashboard;

  const factory MainEvent.changePage({required int index}) =
      _MainEventChangePage;
}
