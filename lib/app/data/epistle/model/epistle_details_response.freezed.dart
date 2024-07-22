// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epistle_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EpistleDetailsResponse _$EpistleDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _EpistleDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$EpistleDetailsResponse {
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
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'ayat')
  List<Verse> get verses => throw _privateConstructorUsedError;
  @JsonKey(name: 'surat_selanjutnya')
  EpistleResponse get nextEpistle => throw _privateConstructorUsedError;
  @JsonKey(name: 'surat_sebelumnya')
  EpistleResponse get previousEpistle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpistleDetailsResponseCopyWith<EpistleDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpistleDetailsResponseCopyWith<$Res> {
  factory $EpistleDetailsResponseCopyWith(EpistleDetailsResponse value,
          $Res Function(EpistleDetailsResponse) then) =
      _$EpistleDetailsResponseCopyWithImpl<$Res, EpistleDetailsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'nomor') int number,
      @JsonKey(name: 'nama') String name,
      @JsonKey(name: 'nama_latin') String latinName,
      @JsonKey(name: 'jumlah_ayat') int numberOfVerses,
      @JsonKey(name: 'tempat_turun') String placeOfDescent,
      @JsonKey(name: 'arti') String meaning,
      @JsonKey(name: 'deskripsi') String description,
      String audio,
      bool status,
      @JsonKey(name: 'ayat') List<Verse> verses,
      @JsonKey(name: 'surat_selanjutnya') EpistleResponse nextEpistle,
      @JsonKey(name: 'surat_sebelumnya') EpistleResponse previousEpistle});

  $EpistleResponseCopyWith<$Res> get nextEpistle;
  $EpistleResponseCopyWith<$Res> get previousEpistle;
}

/// @nodoc
class _$EpistleDetailsResponseCopyWithImpl<$Res,
        $Val extends EpistleDetailsResponse>
    implements $EpistleDetailsResponseCopyWith<$Res> {
  _$EpistleDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? latinName = null,
    Object? numberOfVerses = null,
    Object? placeOfDescent = null,
    Object? meaning = null,
    Object? description = null,
    Object? audio = null,
    Object? status = null,
    Object? verses = null,
    Object? nextEpistle = null,
    Object? previousEpistle = null,
  }) {
    return _then(_value.copyWith(
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      verses: null == verses
          ? _value.verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<Verse>,
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
abstract class _$$EpistleDetailsResponseImplCopyWith<$Res>
    implements $EpistleDetailsResponseCopyWith<$Res> {
  factory _$$EpistleDetailsResponseImplCopyWith(
          _$EpistleDetailsResponseImpl value,
          $Res Function(_$EpistleDetailsResponseImpl) then) =
      __$$EpistleDetailsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'nomor') int number,
      @JsonKey(name: 'nama') String name,
      @JsonKey(name: 'nama_latin') String latinName,
      @JsonKey(name: 'jumlah_ayat') int numberOfVerses,
      @JsonKey(name: 'tempat_turun') String placeOfDescent,
      @JsonKey(name: 'arti') String meaning,
      @JsonKey(name: 'deskripsi') String description,
      String audio,
      bool status,
      @JsonKey(name: 'ayat') List<Verse> verses,
      @JsonKey(name: 'surat_selanjutnya') EpistleResponse nextEpistle,
      @JsonKey(name: 'surat_sebelumnya') EpistleResponse previousEpistle});

  @override
  $EpistleResponseCopyWith<$Res> get nextEpistle;
  @override
  $EpistleResponseCopyWith<$Res> get previousEpistle;
}

/// @nodoc
class __$$EpistleDetailsResponseImplCopyWithImpl<$Res>
    extends _$EpistleDetailsResponseCopyWithImpl<$Res,
        _$EpistleDetailsResponseImpl>
    implements _$$EpistleDetailsResponseImplCopyWith<$Res> {
  __$$EpistleDetailsResponseImplCopyWithImpl(
      _$EpistleDetailsResponseImpl _value,
      $Res Function(_$EpistleDetailsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? latinName = null,
    Object? numberOfVerses = null,
    Object? placeOfDescent = null,
    Object? meaning = null,
    Object? description = null,
    Object? audio = null,
    Object? status = null,
    Object? verses = null,
    Object? nextEpistle = null,
    Object? previousEpistle = null,
  }) {
    return _then(_$EpistleDetailsResponseImpl(
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      verses: null == verses
          ? _value._verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<Verse>,
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
class _$EpistleDetailsResponseImpl implements _EpistleDetailsResponse {
  const _$EpistleDetailsResponseImpl(
      {@JsonKey(name: 'nomor') this.number = 0,
      @JsonKey(name: 'nama') this.name = '',
      @JsonKey(name: 'nama_latin') this.latinName = '',
      @JsonKey(name: 'jumlah_ayat') this.numberOfVerses = 0,
      @JsonKey(name: 'tempat_turun') this.placeOfDescent = '',
      @JsonKey(name: 'arti') this.meaning = '',
      @JsonKey(name: 'deskripsi') this.description = '',
      this.audio = '',
      this.status = false,
      @JsonKey(name: 'ayat') final List<Verse> verses = const [],
      @JsonKey(name: 'surat_selanjutnya')
      this.nextEpistle = const EpistleResponse(),
      @JsonKey(name: 'surat_sebelumnya')
      this.previousEpistle = const EpistleResponse()})
      : _verses = verses;

  factory _$EpistleDetailsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpistleDetailsResponseImplFromJson(json);

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
  @override
  @JsonKey()
  final bool status;
  final List<Verse> _verses;
  @override
  @JsonKey(name: 'ayat')
  List<Verse> get verses {
    if (_verses is EqualUnmodifiableListView) return _verses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_verses);
  }

  @override
  @JsonKey(name: 'surat_selanjutnya')
  final EpistleResponse nextEpistle;
  @override
  @JsonKey(name: 'surat_sebelumnya')
  final EpistleResponse previousEpistle;

  @override
  String toString() {
    return 'EpistleDetailsResponse(number: $number, name: $name, latinName: $latinName, numberOfVerses: $numberOfVerses, placeOfDescent: $placeOfDescent, meaning: $meaning, description: $description, audio: $audio, status: $status, verses: $verses, nextEpistle: $nextEpistle, previousEpistle: $previousEpistle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpistleDetailsResponseImpl &&
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
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._verses, _verses) &&
            (identical(other.nextEpistle, nextEpistle) ||
                other.nextEpistle == nextEpistle) &&
            (identical(other.previousEpistle, previousEpistle) ||
                other.previousEpistle == previousEpistle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      number,
      name,
      latinName,
      numberOfVerses,
      placeOfDescent,
      meaning,
      description,
      audio,
      status,
      const DeepCollectionEquality().hash(_verses),
      nextEpistle,
      previousEpistle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpistleDetailsResponseImplCopyWith<_$EpistleDetailsResponseImpl>
      get copyWith => __$$EpistleDetailsResponseImplCopyWithImpl<
          _$EpistleDetailsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpistleDetailsResponseImplToJson(
      this,
    );
  }
}

abstract class _EpistleDetailsResponse implements EpistleDetailsResponse {
  const factory _EpistleDetailsResponse(
      {@JsonKey(name: 'nomor') final int number,
      @JsonKey(name: 'nama') final String name,
      @JsonKey(name: 'nama_latin') final String latinName,
      @JsonKey(name: 'jumlah_ayat') final int numberOfVerses,
      @JsonKey(name: 'tempat_turun') final String placeOfDescent,
      @JsonKey(name: 'arti') final String meaning,
      @JsonKey(name: 'deskripsi') final String description,
      final String audio,
      final bool status,
      @JsonKey(name: 'ayat') final List<Verse> verses,
      @JsonKey(name: 'surat_selanjutnya') final EpistleResponse nextEpistle,
      @JsonKey(name: 'surat_sebelumnya')
      final EpistleResponse previousEpistle}) = _$EpistleDetailsResponseImpl;

  factory _EpistleDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$EpistleDetailsResponseImpl.fromJson;

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
  bool get status;
  @override
  @JsonKey(name: 'ayat')
  List<Verse> get verses;
  @override
  @JsonKey(name: 'surat_selanjutnya')
  EpistleResponse get nextEpistle;
  @override
  @JsonKey(name: 'surat_sebelumnya')
  EpistleResponse get previousEpistle;
  @override
  @JsonKey(ignore: true)
  _$$EpistleDetailsResponseImplCopyWith<_$EpistleDetailsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Verse _$VerseFromJson(Map<String, dynamic> json) {
  return _Verse.fromJson(json);
}

/// @nodoc
mixin _$Verse {
  int get id => throw _privateConstructorUsedError;
  int get surah => throw _privateConstructorUsedError;
  @JsonKey(name: 'nomor')
  int get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'ar')
  String get arabic => throw _privateConstructorUsedError;
  @JsonKey(name: 'tr')
  String get turkish => throw _privateConstructorUsedError;
  @JsonKey(name: 'idn')
  String get indonesian => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerseCopyWith<Verse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerseCopyWith<$Res> {
  factory $VerseCopyWith(Verse value, $Res Function(Verse) then) =
      _$VerseCopyWithImpl<$Res, Verse>;
  @useResult
  $Res call(
      {int id,
      int surah,
      @JsonKey(name: 'nomor') int number,
      @JsonKey(name: 'ar') String arabic,
      @JsonKey(name: 'tr') String turkish,
      @JsonKey(name: 'idn') String indonesian});
}

/// @nodoc
class _$VerseCopyWithImpl<$Res, $Val extends Verse>
    implements $VerseCopyWith<$Res> {
  _$VerseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? surah = null,
    Object? number = null,
    Object? arabic = null,
    Object? turkish = null,
    Object? indonesian = null,
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
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      arabic: null == arabic
          ? _value.arabic
          : arabic // ignore: cast_nullable_to_non_nullable
              as String,
      turkish: null == turkish
          ? _value.turkish
          : turkish // ignore: cast_nullable_to_non_nullable
              as String,
      indonesian: null == indonesian
          ? _value.indonesian
          : indonesian // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerseImplCopyWith<$Res> implements $VerseCopyWith<$Res> {
  factory _$$VerseImplCopyWith(
          _$VerseImpl value, $Res Function(_$VerseImpl) then) =
      __$$VerseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int surah,
      @JsonKey(name: 'nomor') int number,
      @JsonKey(name: 'ar') String arabic,
      @JsonKey(name: 'tr') String turkish,
      @JsonKey(name: 'idn') String indonesian});
}

/// @nodoc
class __$$VerseImplCopyWithImpl<$Res>
    extends _$VerseCopyWithImpl<$Res, _$VerseImpl>
    implements _$$VerseImplCopyWith<$Res> {
  __$$VerseImplCopyWithImpl(
      _$VerseImpl _value, $Res Function(_$VerseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? surah = null,
    Object? number = null,
    Object? arabic = null,
    Object? turkish = null,
    Object? indonesian = null,
  }) {
    return _then(_$VerseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      arabic: null == arabic
          ? _value.arabic
          : arabic // ignore: cast_nullable_to_non_nullable
              as String,
      turkish: null == turkish
          ? _value.turkish
          : turkish // ignore: cast_nullable_to_non_nullable
              as String,
      indonesian: null == indonesian
          ? _value.indonesian
          : indonesian // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$VerseImpl implements _Verse {
  const _$VerseImpl(
      {this.id = 0,
      this.surah = 0,
      @JsonKey(name: 'nomor') this.number = 0,
      @JsonKey(name: 'ar') this.arabic = '',
      @JsonKey(name: 'tr') this.turkish = '',
      @JsonKey(name: 'idn') this.indonesian = ''});

  factory _$VerseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerseImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int surah;
  @override
  @JsonKey(name: 'nomor')
  final int number;
  @override
  @JsonKey(name: 'ar')
  final String arabic;
  @override
  @JsonKey(name: 'tr')
  final String turkish;
  @override
  @JsonKey(name: 'idn')
  final String indonesian;

  @override
  String toString() {
    return 'Verse(id: $id, surah: $surah, number: $number, arabic: $arabic, turkish: $turkish, indonesian: $indonesian)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.surah, surah) || other.surah == surah) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.arabic, arabic) || other.arabic == arabic) &&
            (identical(other.turkish, turkish) || other.turkish == turkish) &&
            (identical(other.indonesian, indonesian) ||
                other.indonesian == indonesian));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, surah, number, arabic, turkish, indonesian);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerseImplCopyWith<_$VerseImpl> get copyWith =>
      __$$VerseImplCopyWithImpl<_$VerseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerseImplToJson(
      this,
    );
  }
}

abstract class _Verse implements Verse {
  const factory _Verse(
      {final int id,
      final int surah,
      @JsonKey(name: 'nomor') final int number,
      @JsonKey(name: 'ar') final String arabic,
      @JsonKey(name: 'tr') final String turkish,
      @JsonKey(name: 'idn') final String indonesian}) = _$VerseImpl;

  factory _Verse.fromJson(Map<String, dynamic> json) = _$VerseImpl.fromJson;

  @override
  int get id;
  @override
  int get surah;
  @override
  @JsonKey(name: 'nomor')
  int get number;
  @override
  @JsonKey(name: 'ar')
  String get arabic;
  @override
  @JsonKey(name: 'tr')
  String get turkish;
  @override
  @JsonKey(name: 'idn')
  String get indonesian;
  @override
  @JsonKey(ignore: true)
  _$$VerseImplCopyWith<_$VerseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
