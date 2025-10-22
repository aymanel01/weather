// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWeatherData,
    required TResult Function() refreshWeatherData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWeatherData,
    TResult? Function()? refreshWeatherData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWeatherData,
    TResult Function()? refreshWeatherData,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWeatherData value) loadWeatherData,
    required TResult Function(RefreshWeatherData value) refreshWeatherData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWeatherData value)? loadWeatherData,
    TResult? Function(RefreshWeatherData value)? refreshWeatherData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWeatherData value)? loadWeatherData,
    TResult Function(RefreshWeatherData value)? refreshWeatherData,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
    WeatherEvent value,
    $Res Function(WeatherEvent) then,
  ) = _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadWeatherDataImplCopyWith<$Res> {
  factory _$$LoadWeatherDataImplCopyWith(
    _$LoadWeatherDataImpl value,
    $Res Function(_$LoadWeatherDataImpl) then,
  ) = __$$LoadWeatherDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadWeatherDataImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$LoadWeatherDataImpl>
    implements _$$LoadWeatherDataImplCopyWith<$Res> {
  __$$LoadWeatherDataImplCopyWithImpl(
    _$LoadWeatherDataImpl _value,
    $Res Function(_$LoadWeatherDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadWeatherDataImpl implements LoadWeatherData {
  const _$LoadWeatherDataImpl();

  @override
  String toString() {
    return 'WeatherEvent.loadWeatherData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadWeatherDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWeatherData,
    required TResult Function() refreshWeatherData,
  }) {
    return loadWeatherData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWeatherData,
    TResult? Function()? refreshWeatherData,
  }) {
    return loadWeatherData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWeatherData,
    TResult Function()? refreshWeatherData,
    required TResult orElse(),
  }) {
    if (loadWeatherData != null) {
      return loadWeatherData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWeatherData value) loadWeatherData,
    required TResult Function(RefreshWeatherData value) refreshWeatherData,
  }) {
    return loadWeatherData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWeatherData value)? loadWeatherData,
    TResult? Function(RefreshWeatherData value)? refreshWeatherData,
  }) {
    return loadWeatherData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWeatherData value)? loadWeatherData,
    TResult Function(RefreshWeatherData value)? refreshWeatherData,
    required TResult orElse(),
  }) {
    if (loadWeatherData != null) {
      return loadWeatherData(this);
    }
    return orElse();
  }
}

abstract class LoadWeatherData implements WeatherEvent {
  const factory LoadWeatherData() = _$LoadWeatherDataImpl;
}

/// @nodoc
abstract class _$$RefreshWeatherDataImplCopyWith<$Res> {
  factory _$$RefreshWeatherDataImplCopyWith(
    _$RefreshWeatherDataImpl value,
    $Res Function(_$RefreshWeatherDataImpl) then,
  ) = __$$RefreshWeatherDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshWeatherDataImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$RefreshWeatherDataImpl>
    implements _$$RefreshWeatherDataImplCopyWith<$Res> {
  __$$RefreshWeatherDataImplCopyWithImpl(
    _$RefreshWeatherDataImpl _value,
    $Res Function(_$RefreshWeatherDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshWeatherDataImpl implements RefreshWeatherData {
  const _$RefreshWeatherDataImpl();

  @override
  String toString() {
    return 'WeatherEvent.refreshWeatherData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshWeatherDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWeatherData,
    required TResult Function() refreshWeatherData,
  }) {
    return refreshWeatherData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWeatherData,
    TResult? Function()? refreshWeatherData,
  }) {
    return refreshWeatherData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWeatherData,
    TResult Function()? refreshWeatherData,
    required TResult orElse(),
  }) {
    if (refreshWeatherData != null) {
      return refreshWeatherData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWeatherData value) loadWeatherData,
    required TResult Function(RefreshWeatherData value) refreshWeatherData,
  }) {
    return refreshWeatherData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWeatherData value)? loadWeatherData,
    TResult? Function(RefreshWeatherData value)? refreshWeatherData,
  }) {
    return refreshWeatherData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWeatherData value)? loadWeatherData,
    TResult Function(RefreshWeatherData value)? refreshWeatherData,
    required TResult orElse(),
  }) {
    if (refreshWeatherData != null) {
      return refreshWeatherData(this);
    }
    return orElse();
  }
}

abstract class RefreshWeatherData implements WeatherEvent {
  const factory RefreshWeatherData() = _$RefreshWeatherDataImpl;
}
