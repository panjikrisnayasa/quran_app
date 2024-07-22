// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epistle_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpistleDetailsResponseImpl _$$EpistleDetailsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EpistleDetailsResponseImpl(
      number: (json['nomor'] as num?)?.toInt() ?? 0,
      name: json['nama'] as String? ?? '',
      latinName: json['nama_latin'] as String? ?? '',
      numberOfVerses: (json['jumlah_ayat'] as num?)?.toInt() ?? 0,
      placeOfDescent: json['tempat_turun'] as String? ?? '',
      meaning: json['arti'] as String? ?? '',
      description: json['deskripsi'] as String? ?? '',
      audio: json['audio'] as String? ?? '',
      status: json['status'] as bool? ?? false,
      verses: (json['ayat'] as List<dynamic>?)
              ?.map((e) => Verse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$EpistleDetailsResponseImplToJson(
        _$EpistleDetailsResponseImpl instance) =>
    <String, dynamic>{
      'nomor': instance.number,
      'nama': instance.name,
      'nama_latin': instance.latinName,
      'jumlah_ayat': instance.numberOfVerses,
      'tempat_turun': instance.placeOfDescent,
      'arti': instance.meaning,
      'deskripsi': instance.description,
      'audio': instance.audio,
      'status': instance.status,
      'ayat': instance.verses,
    };

_$VerseImpl _$$VerseImplFromJson(Map<String, dynamic> json) => _$VerseImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      surah: (json['surah'] as num?)?.toInt() ?? 0,
      number: (json['nomor'] as num?)?.toInt() ?? 0,
      arabic: json['ar'] as String? ?? '',
      turkish: json['tr'] as String? ?? '',
      indonesian: json['idn'] as String? ?? '',
    );

Map<String, dynamic> _$$VerseImplToJson(_$VerseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'surah': instance.surah,
      'nomor': instance.number,
      'ar': instance.arabic,
      'tr': instance.turkish,
      'idn': instance.indonesian,
    };
