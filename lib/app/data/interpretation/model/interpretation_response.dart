// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'interpretation_response.freezed.dart';
part 'interpretation_response.g.dart';

@freezed
class InterpretationResponse with _$InterpretationResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory InterpretationResponse({
    @Default(false) bool status,
    @JsonKey(name: 'nomor') @Default(0) int number,
    @JsonKey(name: 'nama') @Default('') String name,
    @JsonKey(name: 'nama_latin') @Default('') String latinName,
    @JsonKey(name: 'jumlah_ayat') @Default(0) int numberOfVerses,
    @JsonKey(name: 'tempat_turun') @Default('') String placeOfDescent,
    @JsonKey(name: 'arti') @Default('') String meaning,
    @JsonKey(name: 'deskripsi') @Default('') String description,
    @Default('') String audio,
    @JsonKey(name: 'tafsir') @Default([]) List<Interpretation> interpretations,
  }) = _InterpretationResponse;

  factory InterpretationResponse.fromJson(Map<String, dynamic> json) =>
      _$InterpretationResponseFromJson(json);
}

@freezed
class Interpretation with _$Interpretation {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Interpretation({
    @Default(0) int id,
    @Default(0) int surah,
    @JsonKey(name: 'ayat') @Default(0) int verse,
    @JsonKey(name: 'tafsir') @Default('') String interpretation,
  }) = _Interpretation;

  factory Interpretation.fromJson(Map<String, dynamic> json) =>
      _$InterpretationFromJson(json);
}
