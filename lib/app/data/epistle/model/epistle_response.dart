// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'epistle_response.freezed.dart';
part 'epistle_response.g.dart';

@freezed
class EpistleResponse with _$EpistleResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory EpistleResponse({
    @JsonKey(name: 'nomor') @Default(0) int number,
    @JsonKey(name: 'nama') @Default('') String name,
    @JsonKey(name: 'nama_latin') @Default('') String latinName,
    @JsonKey(name: 'jumlah_ayat') @Default(0) int numberOfVerses,
    @JsonKey(name: 'tempat_turun') @Default('') String placeOfDescent,
    @JsonKey(name: 'arti') @Default('') String meaning,
    @JsonKey(name: 'deskripsi') @Default('') String description,
    @Default('') String audio,
  }) = _EpistleResponse;

  factory EpistleResponse.fromJson(Map<String, dynamic> json) =>
      _$EpistleResponseFromJson(json);
}
