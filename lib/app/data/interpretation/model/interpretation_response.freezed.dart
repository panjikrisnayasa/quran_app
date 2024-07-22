// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interpretation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InterpretationResponse _$InterpretationResponseFromJson(
    Map<String, dynamic> json) {
  return _InterpretationResponse.fromJson(json);
}

/// @nodoc
mixin _$InterpretationResponse {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'nomor')
  int get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_latin')
  String get latinName => throw _privateConstructorUsedError;
  @JsonKey(name: 'jumlah_ayat')
  int get numberOfVerses => throw _privateConstructorUsedError;
  @JsonKey(name: 'tempat_turun')
  String get placeOfDescent => throw _privateConstructorUsedError;
  @JsonKey(name: 'arti')
  String get meaning => throw _privateConstructorUsedError;
  @JsonKey(name: 'deskripsi')
  String get description => throw _privateConstructorUsedError;
  String get audio => throw _privateConstructorUsedError;
  @JsonKey(name: 'tafsir')
  List<Interpretation> get interpretations =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'surat_selanjutnya')
  EpistleResponse get nextEpistle => throw _privateConstructorUsedError;
  @JsonKey(name: 'surat_sebelumnya')
  EpistleResponse get previousEpistle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InterpretationResponseCopyWith<InterpretationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterpretationResponseCopyWith<$Res> {
  factory $InterpretationResponseCopyWith(InterpretationResponse value,
          $Res Function(InterpretationResponse) then) =
      _$InterpretationResponseCopyWithImpl<$Res, InterpretationResponse>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'nomor') int number,
      @JsonKey(name: 'nama') String name,
      @JsonKey(name: 'nama_latin') String latinName,
      @JsonKey(name: 'jumlah_ayat') int numberOfVerses,
      @JsonKey(name: 'tempat_turun') String placeOfDescent,
      @JsonKey(name: 'arti') String meaning,
      @JsonKey(name: 'deskripsi') String description,
      String audio,
      @JsonKey(name: 'tafsir') List<Interpretation> interpretations,
      @JsonKey(name: 'surat_selanjutnya') EpistleResponse nextEpistle,
      @JsonKey(name: 'surat_sebelumnya') EpistleResponse previousEpistle});

  $EpistleResponseCopyWith<$Res> get nextEpistle;
  $EpistleResponseCopyWith<$Res> get previousEpistle;
}

/// @nodoc
class _$InterpretationResponseCopyWithImpl<$Res,
        $Val extends InterpretationResponse>
    implements $InterpretationResponseCopyWith<$Res> {
  _$InterpretationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? number = null,
    Object? name = null,
    Object? latinName = null,
    Object? numberOfVerses = null,
    Object? placeOfDescent = null,
    Object? meaning = null,
    Object? description = null,
    Object? audio = null,
    Object? interpretations = null,
    Object? nextEpistle = null,
    Object? previousEpistle = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latinName: null == latinName
          ? _value.latinName
          : latinName // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfVerses: null == numberOfVerses
          ? _value.numberOfVerses
          : numberOfVerses // ignore: cast_nullable_to_non_nullable
              as int,
      placeOfDescent: null == placeOfDescent
          ? _value.placeOfDescent
          : placeOfDescent // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String,
      interpretations: null == interpretations
          ? _value.interpretations
          : interpretations // ignore: cast_nullable_to_non_nullable
              as List<Interpretation>,
      nextEpistle: null == nextEpistle
          ? _value.nextEpistle
          : nextEpistle // ignore: cast_nullable_to_non_nullable
              as EpistleResponse,
      previousEpistle: null == previousEpistle
          ? _value.previousEpistle
          : previousEpistle // ignore: cast_nullable_to_non_nullable
              as EpistleResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EpistleResponseCopyWith<$Res> get nextEpistle {
    return $EpistleResponseCopyWith<$Res>(_value.nextEpistle, (value) {
      return _then(_value.copyWith(nextEpistle: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EpistleResponseCopyWith<$Res> get previousEpistle {
    return $EpistleResponseCopyWith<$Res>(_value.previousEpistle, (value) {
      return _then(_value.copyWith(previousEpistle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InterpretationResponseImplCopyWith<$Res>
    implements $InterpretationResponseCopyWith<$Res> {
  factory _$$InterpretationResponseImplCopyWith(
          _$InterpretationResponseImpl value,
          $Res Function(_$InterpretationResponseImpl) then) =
      __$$InterpretationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: 'nomor') int number,
      @JsonKey(name: 'nama') String name,
      @JsonKey(name: 'nama_latin') String latinName,
      @JsonKey(name: 'jumlah_ayat') int numberOfVerses,
      @JsonKey(name: 'tempat_turun') String placeOfDescent,
      @JsonKey(name: 'arti') String meaning,
      @JsonKey(name: 'deskripsi') String description,
      String audio,
      @JsonKey(name: 'tafsir') List<Interpretation> interpretations,
      @JsonKey(name: 'surat_selanjutnya') EpistleResponse nextEpistle,
      @JsonKey(name: 'surat_sebelumnya') EpistleResponse previousEpistle});

  @override
  $EpistleResponseCopyWith<$Res> get nextEpistle;
  @override
  $EpistleResponseCopyWith<$Res> get previousEpistle;
}

/// @nodoc
class __$$InterpretationResponseImplCopyWithImpl<$Res>
    extends _$InterpretationResponseCopyWithImpl<$Res,
        _$InterpretationResponseImpl>
    implements _$$InterpretationResponseImplCopyWith<$Res> {
  __$$InterpretationResponseImplCopyWithImpl(
      _$InterpretationResponseImpl _value,
      $Res Function(_$InterpretationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? number = null,
    Object? name = null,
    Object? latinName = null,
    Object? numberOfVerses = null,
    Object? placeOfDescent = null,
    Object? meaning = null,
    Object? description = null,
    Object? audio = null,
    Object? interpretations = null,
    Object? nextEpistle = null,
    Object? previousEpistle = null,
  }) {
    return _then(_$InterpretationResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latinName: null == latinName
          ? _value.latinName
          : latinName // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfVerses: null == numberOfVerses
          ? _value.numberOfVerses
          : numberOfVerses // ignore: cast_nullable_to_non_nullable
              as int,
      placeOfDescent: null == placeOfDescent
          ? _value.placeOfDescent
          : placeOfDescent // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String,
      interpretations: null == interpretations
          ? _value._interpretations
          : interpretations // ignore: cast_nullable_to_non_nullable
              as List<Interpretation>,
      nextEpistle: null == nextEpistle
          ? _value.nextEpistle
          : nextEpistle // ignore: cast_nullable_to_non_nullable
              as EpistleResponse,
      previousEpistle: null == previousEpistle
          ? _value.previousEpistle
          : previousEpistle // ignore: cast_nullable_to_non_nullable
              as EpistleResponse,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$InterpretationResponseImpl implements _InterpretationResponse {
  const _$InterpretationResponseImpl(
      {this.status = false,
      @JsonKey(name: 'nomor') this.number = 0,
      @JsonKey(name: 'nama') this.name = '',
      @JsonKey(name: 'nama_latin') this.latinName = '',
      @JsonKey(name: 'jumlah_ayat') this.numberOfVerses = 0,
      @JsonKey(name: 'tempat_turun') this.placeOfDescent = '',
      @JsonKey(name: 'arti') this.meaning = '',
      @JsonKey(name: 'deskripsi') this.description = '',
      this.audio = '',
      @JsonKey(name: 'tafsir')
      final List<Interpretation> interpretations = const [],
      @JsonKey(name: 'surat_selanjutnya')
      this.nextEpistle = const EpistleResponse(),
      @JsonKey(name: 'surat_sebelumnya')
      this.previousEpistle = const EpistleResponse()})
      : _interpretations = interpretations;

  factory _$InterpretationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterpretationResponseImplFromJson(json);

  @override
  @JsonKey()
  final bool status;
  @override
  @JsonKey(name: 'nomor')
  final int number;
  @override
  @JsonKey(name: 'nama')
  final String name;
  @override
  @JsonKey(name: 'nama_latin')
  final String latinName;
  @override
  @JsonKey(name: 'jumlah_ayat')
  final int numberOfVerses;
  @override
  @JsonKey(name: 'tempat_turun')
  final String placeOfDescent;
  @override
  @JsonKey(name: 'arti')
  final String meaning;
  @override
  @JsonKey(name: 'deskripsi')
  final String description;
  @override
  @JsonKey()
  final String audio;
  final List<Interpretation> _interpretations;
  @override
  @JsonKey(name: 'tafsir')
  List<Interpretation> get interpretations {
    if (_interpretations is EqualUnmodifiableListView) return _interpretations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interpretations);
  }

  @override
  @JsonKey(name: 'surat_selanjutnya')
  final EpistleResponse nextEpistle;
  @override
  @JsonKey(name: 'surat_sebelumnya')
  final EpistleResponse previousEpistle;

  @override
  String toString() {
    return 'InterpretationResponse(status: $status, number: $number, name: $name, latinName: $latinName, numberOfVerses: $numberOfVerses, placeOfDescent: $placeOfDescent, meaning: $meaning, description: $description, audio: $audio, interpretations: $interpretations, nextEpistle: $nextEpistle, previousEpistle: $previousEpistle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterpretationResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latinName, latinName) ||
                other.latinName == latinName) &&
            (identical(other.numberOfVerses, numberOfVerses) ||
                other.numberOfVerses == numberOfVerses) &&
            (identical(other.placeOfDescent, placeOfDescent) ||
                other.placeOfDescent == placeOfDescent) &&
            (identical(other.meaning, meaning) || other.meaning == meaning) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            const DeepCollectionEquality()
                .equals(other._interpretations, _interpretations) &&
            (identical(other.nextEpistle, nextEpistle) ||
                other.nextEpistle == nextEpistle) &&
            (identical(other.previousEpistle, previousEpistle) ||
                other.previousEpistle == previousEpistle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      number,
      name,
      latinName,
      numberOfVerses,
      placeOfDescent,
      meaning,
      description,
      audio,
      const DeepCollectionEquality().hash(_interpretations),
      nextEpistle,
      previousEpistle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InterpretationResponseImplCopyWith<_$InterpretationResponseImpl>
      get copyWith => __$$InterpretationResponseImplCopyWithImpl<
          _$InterpretationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterpretationResponseImplToJson(
      this,
    );
  }
}

abstract class _InterpretationResponse implements InterpretationResponse {
  const factory _InterpretationResponse(
      {final bool status,
      @JsonKey(name: 'nomor') final int number,
      @JsonKey(name: 'nama') final String name,
      @JsonKey(name: 'nama_latin') final String latinName,
      @JsonKey(name: 'jumlah_ayat') final int numberOfVerses,
      @JsonKey(name: 'tempat_turun') final String placeOfDescent,
      @JsonKey(name: 'arti') final String meaning,
      @JsonKey(name: 'deskripsi') final String description,
      final String audio,
      @JsonKey(name: 'tafsir') final List<Interpretation> interpretations,
      @JsonKey(name: 'surat_selanjutnya') final EpistleResponse nextEpistle,
      @JsonKey(name: 'surat_sebelumnya')
      final EpistleResponse previousEpistle}) = _$InterpretationResponseImpl;

  factory _InterpretationResponse.fromJson(Map<String, dynamic> json) =
      _$InterpretationResponseImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'nomor')
  int get number;
  @override
  @JsonKey(name: 'nama')
  String get name;
  @override
  @JsonKey(name: 'nama_latin')
  String get latinName;
  @override
  @JsonKey(name: 'jumlah_ayat')
  int get numberOfVerses;
  @override
  @JsonKey(name: 'tempat_turun')
  String get placeOfDescent;
  @override
  @JsonKey(name: 'arti')
  String get meaning;
  @override
  @JsonKey(name: 'deskripsi')
  String get description;
  @override
  String get audio;
  @override
  @JsonKey(name: 'tafsir')
  List<Interpretation> get interpretations;
  @override
  @JsonKey(name: 'surat_selanjutnya')
  EpistleResponse get nextEpistle;
  @override
  @JsonKey(name: 'surat_sebelumnya')
  EpistleResponse get previousEpistle;
  @override
  @JsonKey(ignore: true)
  _$$InterpretationResponseImplCopyWith<_$InterpretationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Interpretation _$InterpretationFromJson(Map<String, dynamic> json) {
  return _Interpretation.fromJson(json);
}

/// @nodoc
mixin _$Interpretation {
  int get id => throw _privateConstructorUsedError;
  int get surah => throw _privateConstructorUsedError;
  @JsonKey(name: 'ayat')
  int get verse => throw _privateConstructorUsedError;
  @JsonKey(name: 'tafsir')
  String get interpretation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InterpretationCopyWith<Interpretation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterpretationCopyWith<$Res> {
  factory $InterpretationCopyWith(
          Interpretation value, $Res Function(Interpretation) then) =
      _$InterpretationCopyWithImpl<$Res, Interpretation>;
  @useResult
  $Res call(
      {int id,
      int surah,
      @JsonKey(name: 'ayat') int verse,
      @JsonKey(name: 'tafsir') String interpretation});
}

/// @nodoc
class _$InterpretationCopyWithImpl<$Res, $Val extends Interpretation>
    implements $InterpretationCopyWith<$Res> {
  _$InterpretationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? surah = null,
    Object? verse = null,
    Object? interpretation = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as int,
      verse: null == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as int,
      interpretation: null == interpretation
          ? _value.interpretation
          : interpretation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterpretationImplCopyWith<$Res>
    implements $InterpretationCopyWith<$Res> {
  factory _$$InterpretationImplCopyWith(_$InterpretationImpl value,
          $Res Function(_$InterpretationImpl) then) =
      __$$InterpretationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int surah,
      @JsonKey(name: 'ayat') int verse,
      @JsonKey(name: 'tafsir') String interpretation});
}

/// @nodoc
class __$$InterpretationImplCopyWithImpl<$Res>
    extends _$InterpretationCopyWithImpl<$Res, _$InterpretationImpl>
    implements _$$InterpretationImplCopyWith<$Res> {
  __$$InterpretationImplCopyWithImpl(
      _$InterpretationImpl _value, $Res Function(_$InterpretationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? surah = null,
    Object? verse = null,
    Object? interpretation = null,
  }) {
    return _then(_$InterpretationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as int,
      verse: null == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as int,
      interpretation: null == interpretation
          ? _value.interpretation
          : interpretation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$InterpretationImpl implements _Interpretation {
  const _$InterpretationImpl(
      {this.id = 0,
      this.surah = 0,
      @JsonKey(name: 'ayat') this.verse = 0,
      @JsonKey(name: 'tafsir') this.interpretation = ''});

  factory _$InterpretationImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterpretationImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int surah;
  @override
  @JsonKey(name: 'ayat')
  final int verse;
  @override
  @JsonKey(name: 'tafsir')
  final String interpretation;

  @override
  String toString() {
    return 'Interpretation(id: $id, surah: $surah, verse: $verse, interpretation: $interpretation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterpretationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.surah, surah) || other.surah == surah) &&
            (identical(other.verse, verse) || other.verse == verse) &&
            (identical(other.interpretation, interpretation) ||
                other.interpretation == interpretation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, surah, verse, interpretation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InterpretationImplCopyWith<_$InterpretationImpl> get copyWith =>
      __$$InterpretationImplCopyWithImpl<_$InterpretationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterpretationImplToJson(
      this,
    );
  }
}

abstract class _Interpretation implements Interpretation {
  const factory _Interpretation(
          {final int id,
          final int surah,
          @JsonKey(name: 'ayat') final int verse,
          @JsonKey(name: 'tafsir') final String interpretation}) =
      _$InterpretationImpl;

  factory _Interpretation.fromJson(Map<String, dynamic> json) =
      _$InterpretationImpl.fromJson;

  @override
  int get id;
  @override
  int get surah;
  @override
  @JsonKey(name: 'ayat')
  int get verse;
  @override
  @JsonKey(name: 'tafsir')
  String get interpretation;
  @override
  @JsonKey(ignore: true)
  _$$InterpretationImplCopyWith<_$InterpretationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
