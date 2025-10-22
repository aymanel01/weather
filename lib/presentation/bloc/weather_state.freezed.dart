// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WeatherEntity> weatherData) loaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WeatherEntity> weatherData)? loaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WeatherEntity> weatherData)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherLoadingState value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherErrorState value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherLoadingState value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherErrorState value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherLoadingState value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherErrorState value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
    WeatherState value,
    $Res Function(WeatherState) then,
  ) = _$WeatherStateCopyWithImpl<$Res, WeatherState>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$WeatherInitialImplCopyWith<$Res> {
  factory _$$WeatherInitialImplCopyWith(
    _$WeatherInitialImpl value,
    $Res Function(_$WeatherInitialImpl) then,
  ) = __$$WeatherInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherInitialImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherInitialImpl>
    implements _$$WeatherInitialImplCopyWith<$Res> {
  __$$WeatherInitialImplCopyWithImpl(
    _$WeatherInitialImpl _value,
    $Res Function(_$WeatherInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WeatherInitialImpl implements WeatherInitial {
  const _$WeatherInitialImpl();

  @override
  String toString() {
    return 'WeatherState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WeatherInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WeatherEntity> weatherData) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WeatherEntity> weatherData)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WeatherEntity> weatherData)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherLoadingState value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherLoadingState value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherLoadingState value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WeatherInitial implements WeatherState {
  const factory WeatherInitial() = _$WeatherInitialImpl;
}

/// @nodoc
abstract class _$$WeatherLoadingStateImplCopyWith<$Res> {
  factory _$$WeatherLoadingStateImplCopyWith(
    _$WeatherLoadingStateImpl value,
    $Res Function(_$WeatherLoadingStateImpl) then,
  ) = __$$WeatherLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherLoadingStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherLoadingStateImpl>
    implements _$$WeatherLoadingStateImplCopyWith<$Res> {
  __$$WeatherLoadingStateImplCopyWithImpl(
    _$WeatherLoadingStateImpl _value,
    $Res Function(_$WeatherLoadingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WeatherLoadingStateImpl implements WeatherLoadingState {
  const _$WeatherLoadingStateImpl();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WeatherEntity> weatherData) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WeatherEntity> weatherData)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WeatherEntity> weatherData)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherLoadingState value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherLoadingState value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherLoadingState value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WeatherLoadingState implements WeatherState {
  const factory WeatherLoadingState() = _$WeatherLoadingStateImpl;
}

/// @nodoc
abstract class _$$WeatherLoadedImplCopyWith<$Res> {
  factory _$$WeatherLoadedImplCopyWith(
    _$WeatherLoadedImpl value,
    $Res Function(_$WeatherLoadedImpl) then,
  ) = __$$WeatherLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<WeatherEntity> weatherData});
}

/// @nodoc
class __$$WeatherLoadedImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherLoadedImpl>
    implements _$$WeatherLoadedImplCopyWith<$Res> {
  __$$WeatherLoadedImplCopyWithImpl(
    _$WeatherLoadedImpl _value,
    $Res Function(_$WeatherLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? weatherData = null}) {
    return _then(
      _$WeatherLoadedImpl(
        null == weatherData
            ? _value._weatherData
            : weatherData // ignore: cast_nullable_to_non_nullable
                  as List<WeatherEntity>,
      ),
    );
  }
}

/// @nodoc

class _$WeatherLoadedImpl implements WeatherLoaded {
  const _$WeatherLoadedImpl(final List<WeatherEntity> weatherData)
    : _weatherData = weatherData;

  final List<WeatherEntity> _weatherData;
  @override
  List<WeatherEntity> get weatherData {
    if (_weatherData is EqualUnmodifiableListView) return _weatherData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherData);
  }

  @override
  String toString() {
    return 'WeatherState.loaded(weatherData: $weatherData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherLoadedImpl &&
            const DeepCollectionEquality().equals(
              other._weatherData,
              _weatherData,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_weatherData),
  );

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherLoadedImplCopyWith<_$WeatherLoadedImpl> get copyWith =>
      __$$WeatherLoadedImplCopyWithImpl<_$WeatherLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WeatherEntity> weatherData) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(weatherData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WeatherEntity> weatherData)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(weatherData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WeatherEntity> weatherData)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(weatherData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherLoadingState value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherLoadingState value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherLoadingState value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class WeatherLoaded implements WeatherState {
  const factory WeatherLoaded(final List<WeatherEntity> weatherData) =
      _$WeatherLoadedImpl;

  List<WeatherEntity> get weatherData;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherLoadedImplCopyWith<_$WeatherLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherErrorStateImplCopyWith<$Res> {
  factory _$$WeatherErrorStateImplCopyWith(
    _$WeatherErrorStateImpl value,
    $Res Function(_$WeatherErrorStateImpl) then,
  ) = __$$WeatherErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$WeatherErrorStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherErrorStateImpl>
    implements _$$WeatherErrorStateImplCopyWith<$Res> {
  __$$WeatherErrorStateImplCopyWithImpl(
    _$WeatherErrorStateImpl _value,
    $Res Function(_$WeatherErrorStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$WeatherErrorStateImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$WeatherErrorStateImpl implements WeatherErrorState {
  const _$WeatherErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'WeatherState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherErrorStateImplCopyWith<_$WeatherErrorStateImpl> get copyWith =>
      __$$WeatherErrorStateImplCopyWithImpl<_$WeatherErrorStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WeatherEntity> weatherData) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WeatherEntity> weatherData)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WeatherEntity> weatherData)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherInitial value) initial,
    required TResult Function(WeatherLoadingState value) loading,
    required TResult Function(WeatherLoaded value) loaded,
    required TResult Function(WeatherErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherInitial value)? initial,
    TResult? Function(WeatherLoadingState value)? loading,
    TResult? Function(WeatherLoaded value)? loaded,
    TResult? Function(WeatherErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherInitial value)? initial,
    TResult Function(WeatherLoadingState value)? loading,
    TResult Function(WeatherLoaded value)? loaded,
    TResult Function(WeatherErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WeatherErrorState implements WeatherState {
  const factory WeatherErrorState(final String message) =
      _$WeatherErrorStateImpl;

  String get message;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherErrorStateImplCopyWith<_$WeatherErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
