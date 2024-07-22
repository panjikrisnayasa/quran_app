// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epistle_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpistleResponseImpl _$$EpistleResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EpistleResponseImpl(
      number: (json['nomor'] as num?)?.toInt() ?? 0,
      name: json['nama'] as String? ?? '',
      latinName: json['nama_latin'] as String? ?? '',
      numberOfVerses: (json['jumlah_ayat'] as num?)?.toInt() ?? 0,
      placeOfDescent: json['tempat_turun'] as String? ?? '',
      meaning: json['arti'] as String? ?? '',
      description: json['deskripsi'] as String? ?? '',
      audio: json['audio'] as String? ?? '',
    );

Map<String, dynamic> _$$EpistleResponseImplToJson(
        _$EpistleResponseImpl instance) =>
    <String, dynamic>{
      'nomor': instance.number,
      'nama': instance.name,
      'nama_latin': instance.latinName,
      'jumlah_ayat': instance.numberOfVerses,
      'tempat_turun': instance.placeOfDescent,
      'arti': instance.meaning,
      'deskripsi': instance.description,
      'audio': instance.audio,
    };
