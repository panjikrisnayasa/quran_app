// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran_app/app/data/epistle/model/epistle_response.dart';

part 'epistle_details_response.freezed.dart';
part 'epistle_details_response.g.dart';

@freezed
class EpistleDetailsResponse with _$EpistleDetailsResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory EpistleDetailsResponse({
    @JsonKey(name: 'nomor') @Default(0) int number,
    @JsonKey(name: 'nama') @Default('') String name,
    @JsonKey(name: 'nama_latin') @Default('') String latinName,
    @JsonKey(name: 'jumlah_ayat') @Default(0) int numberOfVerses,
    @JsonKey(name: 'tempat_turun') @Default('') String placeOfDescent,
    @JsonKey(name: 'arti') @Default('') String meaning,
    @JsonKey(name: 'deskripsi') @Default('') String description,
    @Default('') String audio,
    @Default(false) bool status,
    @JsonKey(name: 'ayat') @Default([]) List<Verse> verses,
    @JsonKey(name: 'surat_selanjutnya')
    @Default(EpistleResponse())
    EpistleResponse nextEpistle,
    @JsonKey(name: 'surat_sebelumnya')
    @Default(EpistleResponse())
    EpistleResponse previousEpistle,
  }) = _EpistleDetailsResponse;

  factory EpistleDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$EpistleDetailsResponseFromJson(json);
}

@freezed
class Verse with _$Verse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Verse({
    @Default(0) int id,
    @Default(0) int surah,
    @JsonKey(name: 'nomor') @Default(0) int number,
    @JsonKey(name: 'ar') @Default('') String arabic,
    @JsonKey(name: 'tr') @Default('') String turkish,
    @JsonKey(name: 'idn') @Default('') String indonesian,
  }) = _Verse;

  factory Verse.fromJson(Map<String, dynamic> json) => _$VerseFromJson(json);
}
