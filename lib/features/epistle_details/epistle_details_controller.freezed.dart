// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epistle_details_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpistleDetailsUiState {
  AsyncValue<EpistleDetailsResponse> get detailsUiState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EpistleDetailsUiStateCopyWith<EpistleDetailsUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpistleDetailsUiStateCopyWith<$Res> {
  factory $EpistleDetailsUiStateCopyWith(EpistleDetailsUiState value,
          $Res Function(EpistleDetailsUiState) then) =
      _$EpistleDetailsUiStateCopyWithImpl<$Res, EpistleDetailsUiState>;
  @useResult
  $Res call({AsyncValue<EpistleDetailsResponse> detailsUiState});
}

/// @nodoc
class _$EpistleDetailsUiStateCopyWithImpl<$Res,
        $Val extends EpistleDetailsUiState>
    implements $EpistleDetailsUiStateCopyWith<$Res> {
  _$EpistleDetailsUiStateCopyWithImpl(this._value, this._then);

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
              as AsyncValue<EpistleDetailsResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpistleDetailsUiStateImplCopyWith<$Res>
    implements $EpistleDetailsUiStateCopyWith<$Res> {
  factory _$$EpistleDetailsUiStateImplCopyWith(
          _$EpistleDetailsUiStateImpl value,
          $Res Function(_$EpistleDetailsUiStateImpl) then) =
      __$$EpistleDetailsUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<EpistleDetailsResponse> detailsUiState});
}

/// @nodoc
class __$$EpistleDetailsUiStateImplCopyWithImpl<$Res>
    extends _$EpistleDetailsUiStateCopyWithImpl<$Res,
        _$EpistleDetailsUiStateImpl>
    implements _$$EpistleDetailsUiStateImplCopyWith<$Res> {
  __$$EpistleDetailsUiStateImplCopyWithImpl(_$EpistleDetailsUiStateImpl _value,
      $Res Function(_$EpistleDetailsUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailsUiState = null,
  }) {
    return _then(_$EpistleDetailsUiStateImpl(
      detailsUiState: null == detailsUiState
          ? _value.detailsUiState
          : detailsUiState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<EpistleDetailsResponse>,
    ));
  }
}

/// @nodoc

class _$EpistleDetailsUiStateImpl implements _EpistleDetailsUiState {
  const _$EpistleDetailsUiStateImpl(
      {this.detailsUiState = const AsyncValue.loading()});

  @override
  @JsonKey()
  final AsyncValue<EpistleDetailsResponse> detailsUiState;

  @override
  String toString() {
    return 'EpistleDetailsUiState(detailsUiState: $detailsUiState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpistleDetailsUiStateImpl &&
            (identical(other.detailsUiState, detailsUiState) ||
                other.detailsUiState == detailsUiState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailsUiState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpistleDetailsUiStateImplCopyWith<_$EpistleDetailsUiStateImpl>
      get copyWith => __$$EpistleDetailsUiStateImplCopyWithImpl<
          _$EpistleDetailsUiStateImpl>(this, _$identity);
}

abstract class _EpistleDetailsUiState implements EpistleDetailsUiState {
  const factory _EpistleDetailsUiState(
          {final AsyncValue<EpistleDetailsResponse> detailsUiState}) =
      _$EpistleDetailsUiStateImpl;

  @override
  AsyncValue<EpistleDetailsResponse> get detailsUiState;
  @override
  @JsonKey(ignore: true)
  _$$EpistleDetailsUiStateImplCopyWith<_$EpistleDetailsUiStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
