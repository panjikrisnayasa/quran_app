// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interpretation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InterpretationResponseImpl _$$InterpretationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$InterpretationResponseImpl(
      status: json['status'] as bool? ?? false,
      number: (json['nomor'] as num?)?.toInt() ?? 0,
      name: json['nama'] as String? ?? '',
      latinName: json['nama_latin'] as String? ?? '',
      numberOfVerses: (json['jumlah_ayat'] as num?)?.toInt() ?? 0,
      placeOfDescent: json['tempat_turun'] as String? ?? '',
      meaning: json['arti'] as String? ?? '',
      description: json['deskripsi'] as String? ?? '',
      audio: json['audio'] as String? ?? '',
      interpretations: (json['tafsir'] as List<dynamic>?)
              ?.map((e) => Interpretation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      nextEpistle: json['surat_selanjutnya'] == null
          ? const EpistleResponse()
          : EpistleResponse.fromJson(
              json['surat_selanjutnya'] as Map<String, dynamic>),
      previousEpistle: json['surat_sebelumnya'] == null
          ? const EpistleResponse()
          : EpistleResponse.fromJson(
              json['surat_sebelumnya'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InterpretationResponseImplToJson(
        _$InterpretationResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'nomor': instance.number,
      'nama': instance.name,
      'nama_latin': instance.latinName,
      'jumlah_ayat': instance.numberOfVerses,
      'tempat_turun': instance.placeOfDescent,
      'arti': instance.meaning,
      'deskripsi': instance.description,
      'audio': instance.audio,
      'tafsir': instance.interpretations,
      'surat_selanjutnya': instance.nextEpistle,
      'surat_sebelumnya': instance.previousEpistle,
    };

_$InterpretationImpl _$$InterpretationImplFromJson(Map<String, dynamic> json) =>
    _$InterpretationImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      surah: (json['surah'] as num?)?.toInt() ?? 0,
      verse: (json['ayat'] as num?)?.toInt() ?? 0,
      interpretation: json['tafsir'] as String? ?? '',
    );

Map<String, dynamic> _$$InterpretationImplToJson(
        _$InterpretationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'surah': instance.surah,
      'ayat': instance.verse,
      'tafsir': instance.interpretation,
    };
