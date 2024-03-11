// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool fullDashboard, bool defaultVersion)
        changeDashboard,
    required TResult Function(int index) changePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool fullDashboard, bool defaultVersion)? changeDashboard,
    TResult? Function(int index)? changePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool fullDashboard, bool defaultVersion)? changeDashboard,
    TResult Function(int index)? changePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainEventChangeDashboard value) changeDashboard,
    required TResult Function(_MainEventChangePage value) changePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainEventChangeDashboard value)? changeDashboard,
    TResult? Function(_MainEventChangePage value)? changePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainEventChangeDashboard value)? changeDashboard,
    TResult Function(_MainEventChangePage value)? changePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MainEventChangeDashboardCopyWith<$Res> {
  factory _$$_MainEventChangeDashboardCopyWith(
          _$_MainEventChangeDashboard value,
          $Res Function(_$_MainEventChangeDashboard) then) =
      __$$_MainEventChangeDashboardCopyWithImpl<$Res>;
  @useResult
  $Res call({bool fullDashboard, bool defaultVersion});
}

/// @nodoc
class __$$_MainEventChangeDashboardCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$_MainEventChangeDashboard>
    implements _$$_MainEventChangeDashboardCopyWith<$Res> {
  __$$_MainEventChangeDashboardCopyWithImpl(_$_MainEventChangeDashboard _value,
      $Res Function(_$_MainEventChangeDashboard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullDashboard = null,
    Object? defaultVersion = null,
  }) {
    return _then(_$_MainEventChangeDashboard(
      fullDashboard: null == fullDashboard
          ? _value.fullDashboard
          : fullDashboard // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultVersion: null == defaultVersion
          ? _value.defaultVersion
          : defaultVersion // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MainEventChangeDashboard implements _MainEventChangeDashboard {
  const _$_MainEventChangeDashboard(
      {this.fullDashboard = true, this.defaultVersion = true});

  @override
  @JsonKey()
  final bool fullDashboard;
  @override
  @JsonKey()
  final bool defaultVersion;

  @override
  String toString() {
    return 'MainEvent.changeDashboard(fullDashboard: $fullDashboard, defaultVersion: $defaultVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainEventChangeDashboard &&
            (identical(other.fullDashboard, fullDashboard) ||
                other.fullDashboard == fullDashboard) &&
            (identical(other.defaultVersion, defaultVersion) ||
                other.defaultVersion == defaultVersion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullDashboard, defaultVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainEventChangeDashboardCopyWith<_$_MainEventChangeDashboard>
      get copyWith => __$$_MainEventChangeDashboardCopyWithImpl<
          _$_MainEventChangeDashboard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool fullDashboard, bool defaultVersion)
        changeDashboard,
    required TResult Function(int index) changePage,
  }) {
    return changeDashboard(fullDashboard, defaultVersion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool fullDashboard, bool defaultVersion)? changeDashboard,
    TResult? Function(int index)? changePage,
  }) {
    return changeDashboard?.call(fullDashboard, defaultVersion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool fullDashboard, bool defaultVersion)? changeDashboard,
    TResult Function(int index)? changePage,
    required TResult orElse(),
  }) {
    if (changeDashboard != null) {
      return changeDashboard(fullDashboard, defaultVersion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainEventChangeDashboard value) changeDashboard,
    required TResult Function(_MainEventChangePage value) changePage,
  }) {
    return changeDashboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainEventChangeDashboard value)? changeDashboard,
    TResult? Function(_MainEventChangePage value)? changePage,
  }) {
    return changeDashboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainEventChangeDashboard value)? changeDashboard,
    TResult Function(_MainEventChangePage value)? changePage,
    required TResult orElse(),
  }) {
    if (changeDashboard != null) {
      return changeDashboard(this);
    }
    return orElse();
  }
}

abstract class _MainEventChangeDashboard implements MainEvent {
  const factory _MainEventChangeDashboard(
      {final bool fullDashboard,
      final bool defaultVersion}) = _$_MainEventChangeDashboard;

  bool get fullDashboard;
  bool get defaultVersion;
  @JsonKey(ignore: true)
  _$$_MainEventChangeDashboardCopyWith<_$_MainEventChangeDashboard>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MainEventChangePageCopyWith<$Res> {
  factory _$$_MainEventChangePageCopyWith(_$_MainEventChangePage value,
          $Res Function(_$_MainEventChangePage) then) =
      __$$_MainEventChangePageCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_MainEventChangePageCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$_MainEventChangePage>
    implements _$$_MainEventChangePageCopyWith<$Res> {
  __$$_MainEventChangePageCopyWithImpl(_$_MainEventChangePage _value,
      $Res Function(_$_MainEventChangePage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_MainEventChangePage(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MainEventChangePage implements _MainEventChangePage {
  const _$_MainEventChangePage({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'MainEvent.changePage(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainEventChangePage &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainEventChangePageCopyWith<_$_MainEventChangePage> get copyWith =>
      __$$_MainEventChangePageCopyWithImpl<_$_MainEventChangePage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool fullDashboard, bool defaultVersion)
        changeDashboard,
    required TResult Function(int index) changePage,
  }) {
    return changePage(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool fullDashboard, bool defaultVersion)? changeDashboard,
    TResult? Function(int index)? changePage,
  }) {
    return changePage?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool fullDashboard, bool defaultVersion)? changeDashboard,
    TResult Function(int index)? changePage,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainEventChangeDashboard value) changeDashboard,
    required TResult Function(_MainEventChangePage value) changePage,
  }) {
    return changePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainEventChangeDashboard value)? changeDashboard,
    TResult? Function(_MainEventChangePage value)? changePage,
  }) {
    return changePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainEventChangeDashboard value)? changeDashboard,
    TResult Function(_MainEventChangePage value)? changePage,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(this);
    }
    return orElse();
  }
}

abstract class _MainEventChangePage implements MainEvent {
  const factory _MainEventChangePage({required final int index}) =
      _$_MainEventChangePage;

  int get index;
  @JsonKey(ignore: true)
  _$$_MainEventChangePageCopyWith<_$_MainEventChangePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  int get index => throw _privateConstructorUsedError;
  bool get fullDashboard => throw _privateConstructorUsedError;
  bool get defaultVersion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call({int index, bool fullDashboard, bool defaultVersion});
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? fullDashboard = null,
    Object? defaultVersion = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      fullDashboard: null == fullDashboard
          ? _value.fullDashboard
          : fullDashboard // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultVersion: null == defaultVersion
          ? _value.defaultVersion
          : defaultVersion // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainStateCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$$_MainStateCopyWith(
          _$_MainState value, $Res Function(_$_MainState) then) =
      __$$_MainStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, bool fullDashboard, bool defaultVersion});
}

/// @nodoc
class __$$_MainStateCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_MainState>
    implements _$$_MainStateCopyWith<$Res> {
  __$$_MainStateCopyWithImpl(
      _$_MainState _value, $Res Function(_$_MainState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? fullDashboard = null,
    Object? defaultVersion = null,
  }) {
    return _then(_$_MainState(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      fullDashboard: null == fullDashboard
          ? _value.fullDashboard
          : fullDashboard // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultVersion: null == defaultVersion
          ? _value.defaultVersion
          : defaultVersion // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MainState implements _MainState {
  const _$_MainState(
      {this.index = 0, this.fullDashboard = true, this.defaultVersion = true});

  @override
  @JsonKey()
  final int index;
  @override
  @JsonKey()
  final bool fullDashboard;
  @override
  @JsonKey()
  final bool defaultVersion;

  @override
  String toString() {
    return 'MainState(index: $index, fullDashboard: $fullDashboard, defaultVersion: $defaultVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainState &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.fullDashboard, fullDashboard) ||
                other.fullDashboard == fullDashboard) &&
            (identical(other.defaultVersion, defaultVersion) ||
                other.defaultVersion == defaultVersion));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, index, fullDashboard, defaultVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainStateCopyWith<_$_MainState> get copyWith =>
      __$$_MainStateCopyWithImpl<_$_MainState>(this, _$identity);
}

abstract class _MainState implements MainState {
  const factory _MainState(
      {final int index,
      final bool fullDashboard,
      final bool defaultVersion}) = _$_MainState;

  @override
  int get index;
  @override
  bool get fullDashboard;
  @override
  bool get defaultVersion;
  @override
  @JsonKey(ignore: true)
  _$$_MainStateCopyWith<_$_MainState> get copyWith =>
      throw _privateConstructorUsedError;
}
