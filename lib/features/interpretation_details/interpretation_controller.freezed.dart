// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interpretation_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InterpretationUiState {
  AsyncValue<InterpretationResponse> get detailsUiState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InterpretationUiStateCopyWith<InterpretationUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterpretationUiStateCopyWith<$Res> {
  factory $InterpretationUiStateCopyWith(InterpretationUiState value,
          $Res Function(InterpretationUiState) then) =
      _$InterpretationUiStateCopyWithImpl<$Res, InterpretationUiState>;
  @useResult
  $Res call({AsyncValue<InterpretationResponse> detailsUiState});
}

/// @nodoc
class _$InterpretationUiStateCopyWithImpl<$Res,
        $Val extends InterpretationUiState>
    implements $InterpretationUiStateCopyWith<$Res> {
  _$InterpretationUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailsUiState = null,
  }) {
    return _then(_value.copyWith(
      detailsUiState: null == detailsUiState
          ? _value.detailsUiState
          : detailsUiState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<InterpretationResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterpretationUiStateImplCopyWith<$Res>
    implements $InterpretationUiStateCopyWith<$Res> {
  factory _$$InterpretationUiStateImplCopyWith(
          _$InterpretationUiStateImpl value,
          $Res Function(_$InterpretationUiStateImpl) then) =
      __$$InterpretationUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<InterpretationResponse> detailsUiState});
}

/// @nodoc
class __$$InterpretationUiStateImplCopyWithImpl<$Res>
    extends _$InterpretationUiStateCopyWithImpl<$Res,
        _$InterpretationUiStateImpl>
    implements _$$InterpretationUiStateImplCopyWith<$Res> {
  __$$InterpretationUiStateImplCopyWithImpl(_$InterpretationUiStateImpl _value,
      $Res Function(_$InterpretationUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailsUiState = null,
  }) {
    return _then(_$InterpretationUiStateImpl(
      detailsUiState: null == detailsUiState
          ? _value.detailsUiState
          : detailsUiState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<InterpretationResponse>,
    ));
  }
}

/// @nodoc

class _$InterpretationUiStateImpl implements _InterpretationUiState {
  const _$InterpretationUiStateImpl(
      {this.detailsUiState = const AsyncValue.loading()});

  @override
  @JsonKey()
  final AsyncValue<InterpretationResponse> detailsUiState;

  @override
  String toString() {
    return 'InterpretationUiState(detailsUiState: $detailsUiState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterpretationUiStateImpl &&
            (identical(other.detailsUiState, detailsUiState) ||
                other.detailsUiState == detailsUiState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailsUiState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InterpretationUiStateImplCopyWith<_$InterpretationUiStateImpl>
      get copyWith => __$$InterpretationUiStateImplCopyWithImpl<
          _$InterpretationUiStateImpl>(this, _$identity);
}

abstract class _InterpretationUiState implements InterpretationUiState {
  const factory _InterpretationUiState(
          {final AsyncValue<InterpretationResponse> detailsUiState}) =
      _$InterpretationUiStateImpl;

  @override
  AsyncValue<InterpretationResponse> get detailsUiState;
  @override
  @JsonKey(ignore: true)
  _$$InterpretationUiStateImplCopyWith<_$InterpretationUiStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
