// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epistle_list_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpistleListUiState {
  AsyncValue<List<EpistleResponse>> get epistlesUiState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EpistleListUiStateCopyWith<EpistleListUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpistleListUiStateCopyWith<$Res> {
  factory $EpistleListUiStateCopyWith(
          EpistleListUiState value, $Res Function(EpistleListUiState) then) =
      _$EpistleListUiStateCopyWithImpl<$Res, EpistleListUiState>;
  @useResult
  $Res call({AsyncValue<List<EpistleResponse>> epistlesUiState});
}

/// @nodoc
class _$EpistleListUiStateCopyWithImpl<$Res, $Val extends EpistleListUiState>
    implements $EpistleListUiStateCopyWith<$Res> {
  _$EpistleListUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epistlesUiState = null,
  }) {
    return _then(_value.copyWith(
      epistlesUiState: null == epistlesUiState
          ? _value.epistlesUiState
          : epistlesUiState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<EpistleResponse>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpistleListUiStateImplCopyWith<$Res>
    implements $EpistleListUiStateCopyWith<$Res> {
  factory _$$EpistleListUiStateImplCopyWith(_$EpistleListUiStateImpl value,
          $Res Function(_$EpistleListUiStateImpl) then) =
      __$$EpistleListUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<EpistleResponse>> epistlesUiState});
}

/// @nodoc
class __$$EpistleListUiStateImplCopyWithImpl<$Res>
    extends _$EpistleListUiStateCopyWithImpl<$Res, _$EpistleListUiStateImpl>
    implements _$$EpistleListUiStateImplCopyWith<$Res> {
  __$$EpistleListUiStateImplCopyWithImpl(_$EpistleListUiStateImpl _value,
      $Res Function(_$EpistleListUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epistlesUiState = null,
  }) {
    return _then(_$EpistleListUiStateImpl(
      epistlesUiState: null == epistlesUiState
          ? _value.epistlesUiState
          : epistlesUiState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<EpistleResponse>>,
    ));
  }
}

/// @nodoc

class _$EpistleListUiStateImpl implements _EpistleListUiState {
  const _$EpistleListUiStateImpl(
      {this.epistlesUiState = const AsyncValue.loading()});

  @override
  @JsonKey()
  final AsyncValue<List<EpistleResponse>> epistlesUiState;

  @override
  String toString() {
    return 'EpistleListUiState(epistlesUiState: $epistlesUiState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpistleListUiStateImpl &&
            (identical(other.epistlesUiState, epistlesUiState) ||
                other.epistlesUiState == epistlesUiState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, epistlesUiState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpistleListUiStateImplCopyWith<_$EpistleListUiStateImpl> get copyWith =>
      __$$EpistleListUiStateImplCopyWithImpl<_$EpistleListUiStateImpl>(
          this, _$identity);
}

abstract class _EpistleListUiState implements EpistleListUiState {
  const factory _EpistleListUiState(
          {final AsyncValue<List<EpistleResponse>> epistlesUiState}) =
      _$EpistleListUiStateImpl;

  @override
  AsyncValue<List<EpistleResponse>> get epistlesUiState;
  @override
  @JsonKey(ignore: true)
  _$$EpistleListUiStateImplCopyWith<_$EpistleListUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
