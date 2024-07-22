import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quran_app/app/data/epistle/epistle_repository.dart';
import 'package:quran_app/app/data/epistle/model/epistle_details_response.dart';
import 'package:quran_app/app/data/epistle/model/epistle_response.dart';
import 'package:quran_app/app/network/http_client.dart';

import '../../../utils/mock_dependencies.dart';

void main() {
  final exception = Exception('error');

  EpistleRepository? repository;

  setUp(() {
    initializeMocks();

    final container = ProviderContainer(
      overrides: [
        HttpClient.provider.overrideWithValue(httpClient),
      ],
    );
    repository = container.read(EpistleRepository.provider);
  });

  group('Validate getEpistles()', () {
    test('getEpistles() success', () async {
      when(
        () => httpClient.get<List<dynamic>>(
          path: '/surat',
        ),
      ).thenAnswer((_) async => _mockEpistleResponseList);

      final result = await repository?.getEpistles();

      expect(
        result,
        _expectedEpistleResponseList,
      );
    });

    test('getEpistles() got exception', () async {
      when(
        () => httpClient.get<List<dynamic>>(
          path: '/surat',
        ),
      ).thenThrow(exception);

      expect(
        () async => repository?.getEpistles(),
        throwsA(exception),
      );
    });
  });

  group('Validate getEpistleDetails()', () {
    test('getEpistleDetails() success', () async {
      when(
        () => httpClient.get<Map<String, dynamic>>(
          path: '/surat/$_number',
        ),
      ).thenAnswer((_) async => _mockEpistleDetailsResponse);

      final result = await repository?.getEpistleDetails(number: _number);

      expect(
        result,
        _expectedEpistleDetailsResponse,
      );
    });

    test('getEpistleDetails() got exception', () async {
      when(
        () => httpClient.get<Map<String, dynamic>>(
          path: '/surat/$_number',
        ),
      ).thenThrow(exception);

      expect(
        () async => repository?.getEpistleDetails(number: _number),
        throwsA(exception),
      );
    });
  });
}

const _number = 2;

final _mockEpistleResponseList = [
  {
    "nomor": 1,
    "nama": "الفاتحة",
    "nama_latin": "Al-Fatihah",
    "jumlah_ayat": 7,
    "tempat_turun": "mekah",
    "arti": "Pembukaan",
    "deskripsi":
        "Surat <i>Al Faatihah</i> (Pembukaan) yang diturunkan di Mekah dan terdiri dari 7 ayat adalah surat yang pertama-tama diturunkan dengan lengkap  diantara surat-surat yang ada dalam Al Quran dan termasuk golongan surat Makkiyyah. Surat ini disebut <i>Al Faatihah</i> (Pembukaan), karena dengan surat inilah dibuka dan dimulainya Al Quran. Dinamakan <i>Ummul Quran</i> (induk Al Quran) atau <i>Ummul Kitaab</i> (induk Al Kitaab) karena dia merupakan induk dari semua isi Al Quran, dan karena itu diwajibkan membacanya pada tiap-tiap sembahyang.<br> Dinamakan pula <i>As Sab'ul matsaany</i> (tujuh yang berulang-ulang) karena ayatnya tujuh dan dibaca berulang-ulang dalam sholat.",
    "audio":
        "https://equran.nos.wjv-1.neo.id/audio-full/Misyari-Rasyid-Al-Afasi/001.mp3",
  },
  {
    "nomor": 2,
    "nama": "البقرة",
    "nama_latin": "Al-Baqarah",
    "jumlah_ayat": 286,
    "tempat_turun": "madinah",
    "arti": "Sapi",
    "deskripsi":
        "Surat <i>Al Baqarah</i> yang 286 ayat itu turun di Madinah yang sebahagian besar diturunkan pada permulaan tahun Hijrah, kecuali ayat 281 diturunkan di Mina pada Hajji wadaa' (hajji Nabi Muhammad s.a.w. yang terakhir). Seluruh ayat dari surat Al Baqarah termasuk golongan Madaniyyah, merupakan surat yang terpanjang di antara surat-surat Al Quran yang di dalamnya terdapat pula ayat yang terpancang (ayat 282). Surat ini dinamai <i>Al Baqarah</i> karena di dalamnya disebutkan kisah penyembelihan sapi betina yang diperintahkan Allah kepada Bani Israil (ayat 67 sampai dengan 74), dimana dijelaskan watak orang Yahudi pada umumnya. Dinamai <i>Fusthaatul-Quran</i> (puncak Al Quran) karena memuat beberapa hukum yang tidak disebutkan dalam surat yang lain. Dinamai juga surat  <i>alif-laam-miim</i> karena surat ini dimulai dengan Alif-laam-miim.",
    "audio":
        "https://equran.nos.wjv-1.neo.id/audio-full/Misyari-Rasyid-Al-Afasi/002.mp3",
  },
];

const _expectedEpistleResponseList = [
  EpistleResponse(
    number: 1,
    name: "الفاتحة",
    latinName: "Al-Fatihah",
    numberOfVerses: 7,
    placeOfDescent: "mekah",
    meaning: "Pembukaan",
    description:
        "Surat <i>Al Faatihah</i> (Pembukaan) yang diturunkan di Mekah dan terdiri dari 7 ayat adalah surat yang pertama-tama diturunkan dengan lengkap  diantara surat-surat yang ada dalam Al Quran dan termasuk golongan surat Makkiyyah. Surat ini disebut <i>Al Faatihah</i> (Pembukaan), karena dengan surat inilah dibuka dan dimulainya Al Quran. Dinamakan <i>Ummul Quran</i> (induk Al Quran) atau <i>Ummul Kitaab</i> (induk Al Kitaab) karena dia merupakan induk dari semua isi Al Quran, dan karena itu diwajibkan membacanya pada tiap-tiap sembahyang.<br> Dinamakan pula <i>As Sab'ul matsaany</i> (tujuh yang berulang-ulang) karena ayatnya tujuh dan dibaca berulang-ulang dalam sholat.",
    audio:
        "https://equran.nos.wjv-1.neo.id/audio-full/Misyari-Rasyid-Al-Afasi/001.mp3",
  ),
  EpistleResponse(
    number: 2,
    name: "البقرة",
    latinName: "Al-Baqarah",
    numberOfVerses: 286,
    placeOfDescent: "madinah",
    meaning: "Sapi",
    description:
        "Surat <i>Al Baqarah</i> yang 286 ayat itu turun di Madinah yang sebahagian besar diturunkan pada permulaan tahun Hijrah, kecuali ayat 281 diturunkan di Mina pada Hajji wadaa' (hajji Nabi Muhammad s.a.w. yang terakhir). Seluruh ayat dari surat Al Baqarah termasuk golongan Madaniyyah, merupakan surat yang terpanjang di antara surat-surat Al Quran yang di dalamnya terdapat pula ayat yang terpancang (ayat 282). Surat ini dinamai <i>Al Baqarah</i> karena di dalamnya disebutkan kisah penyembelihan sapi betina yang diperintahkan Allah kepada Bani Israil (ayat 67 sampai dengan 74), dimana dijelaskan watak orang Yahudi pada umumnya. Dinamai <i>Fusthaatul-Quran</i> (puncak Al Quran) karena memuat beberapa hukum yang tidak disebutkan dalam surat yang lain. Dinamai juga surat  <i>alif-laam-miim</i> karena surat ini dimulai dengan Alif-laam-miim.",
    audio:
        "https://equran.nos.wjv-1.neo.id/audio-full/Misyari-Rasyid-Al-Afasi/002.mp3",
  ),
];

final _mockEpistleDetailsResponse = {
  "nomor": 2,
  "nama": "البقرة",
  "nama_latin": "Al-Baqarah",
  "jumlah_ayat": 286,
  "tempat_turun": "madinah",
  "arti": "Sapi",
  "deskripsi":
      "Surat <i>Al Baqarah</i> yang 286 ayat itu turun di Madinah yang sebahagian besar diturunkan pada permulaan tahun Hijrah, kecuali ayat 281 diturunkan di Mina pada Hajji wadaa' (hajji Nabi Muhammad s.a.w. yang terakhir). Seluruh ayat dari surat Al Baqarah termasuk golongan Madaniyyah, merupakan surat yang terpanjang di antara surat-surat Al Quran yang di dalamnya terdapat pula ayat yang terpancang (ayat 282). Surat ini dinamai <i>Al Baqarah</i> karena di dalamnya disebutkan kisah penyembelihan sapi betina yang diperintahkan Allah kepada Bani Israil (ayat 67 sampai dengan 74), dimana dijelaskan watak orang Yahudi pada umumnya. Dinamai <i>Fusthaatul-Quran</i> (puncak Al Quran) karena memuat beberapa hukum yang tidak disebutkan dalam surat yang lain. Dinamai juga surat  <i>alif-laam-miim</i> karena surat ini dimulai dengan Alif-laam-miim.",
  "audio":
      "https://equran.nos.wjv-1.neo.id/audio-full/Misyari-Rasyid-Al-Afasi/002.mp3",
  "status": true,
  "ayat": [
    {
      "id": 8,
      "surah": 2,
      "nomor": 1,
      "ar": "الۤمّۤ ۚ",
      "tr": "alif lām mīm.",
      "idn": "Alif Lam Mim.",
    },
    {
      "id": 9,
      "surah": 2,
      "nomor": 2,
      "ar": "ذٰلِكَ الْكِتٰبُ لَا رَيْبَ ۛ فِيْهِ ۛ هُدًى لِّلْمُتَّقِيْنَۙ",
      "tr": "Żālikal-kitābu lā raiba fīh(i), hudal lil-muttaqīn(a).",
      "idn":
          "Kitab (Al-Qur'an) ini tidak ada keraguan padanya; petunjuk bagi mereka yang bertakwa,",
    },
  ],
  "surat_selanjutnya": {
    "id": 3,
    "nomor": 3,
    "nama": "اٰل عمران",
    "nama_latin": "Ali 'Imran",
    "jumlah_ayat": 200,
    "tempat_turun": "madinah",
    "arti": "Keluarga Imran",
    "deskripsi":
        "Surat <i>Ali 'Imran</i> yang terdiri dari 200 ayat ini adalah surat Madaniyyah.  Dinamakan <i>Ali 'Imran</i> karena memuat kisah keluarga 'Imran yang di dalam kisah itu disebutkan kelahiran Nabi Isa a.s., persamaan kejadiannya dengan Nabi Adam a. s., kenabian dan beberapa mukjizatnya, serta disebut pula kelahiran Maryam puteri 'Imran, ibu dari Nabi Isa a.s. Surat Al Baqarah dan Ali 'Imran ini dinamakan <i>Az Zahrawaani</i> (dua yang cemerlang), karena kedua surat ini menyingkapkan hal-hal yang disembunyikan oleh para Ahli Kitab, seperti kejadian dan kelahiran Nabi Isa a.s., kedatangan Nabi Muhammad s.a.w. dan sebagainya.",
    "audio":
        "https://equran.nos.wjv-1.neo.id/audio-full/Misyari-Rasyid-Al-Afasi/003.mp3",
  },
  "surat_sebelumnya": {
    "id": 1,
    "nomor": 1,
    "nama": "الفاتحة",
    "nama_latin": "Al-Fatihah",
    "jumlah_ayat": 7,
    "tempat_turun": "mekah",
    "arti": "Pembukaan",
    "deskripsi":
        "Surat <i>Al Faatihah</i> (Pembukaan) yang diturunkan di Mekah dan terdiri dari 7 ayat adalah surat yang pertama-tama diturunkan dengan lengkap  diantara surat-surat yang ada dalam Al Quran dan termasuk golongan surat Makkiyyah. Surat ini disebut <i>Al Faatihah</i> (Pembukaan), karena dengan surat inilah dibuka dan dimulainya Al Quran. Dinamakan <i>Ummul Quran</i> (induk Al Quran) atau <i>Ummul Kitaab</i> (induk Al Kitaab) karena dia merupakan induk dari semua isi Al Quran, dan karena itu diwajibkan membacanya pada tiap-tiap sembahyang.<br> Dinamakan pula <i>As Sab'ul matsaany</i> (tujuh yang berulang-ulang) karena ayatnya tujuh dan dibaca berulang-ulang dalam sholat.",
    "audio":
        "https://equran.nos.wjv-1.neo.id/audio-full/Misyari-Rasyid-Al-Afasi/001.mp3",
  }
};

const _expectedEpistleDetailsResponse = EpistleDetailsResponse(
  number: 2,
  name: "البقرة",
  latinName: "Al-Baqarah",
  numberOfVerses: 286,
  placeOfDescent: "madinah",
  meaning: "Sapi",
  description:
      "Surat <i>Al Baqarah</i> yang 286 ayat itu turun di Madinah yang sebahagian besar diturunkan pada permulaan tahun Hijrah, kecuali ayat 281 diturunkan di Mina pada Hajji wadaa' (hajji Nabi Muhammad s.a.w. yang terakhir). Seluruh ayat dari surat Al Baqarah termasuk golongan Madaniyyah, merupakan surat yang terpanjang di antara surat-surat Al Quran yang di dalamnya terdapat pula ayat yang terpancang (ayat 282). Surat ini dinamai <i>Al Baqarah</i> karena di dalamnya disebutkan kisah penyembelihan sapi betina yang diperintahkan Allah kepada Bani Israil (ayat 67 sampai dengan 74), dimana dijelaskan watak orang Yahudi pada umumnya. Dinamai <i>Fusthaatul-Quran</i> (puncak Al Quran) karena memuat beberapa hukum yang tidak disebutkan dalam surat yang lain. Dinamai juga surat  <i>alif-laam-miim</i> karena surat ini dimulai dengan Alif-laam-miim.",
  audio:
      "https://equran.nos.wjv-1.neo.id/audio-full/Misyari-Rasyid-Al-Afasi/002.mp3",
  status: true,
  verses: [
    Verse(
      id: 8,
      surah: 2,
      number: 1,
      arabic: "الۤمّۤ ۚ",
      turkish: "alif lām mīm.",
      indonesian: "Alif Lam Mim.",
    ),
    Verse(
      id: 9,
      surah: 2,
      number: 2,
      arabic: "ذٰلِكَ الْكِتٰبُ لَا رَيْبَ ۛ فِيْهِ ۛ هُدًى لِّلْمُتَّقِيْنَۙ",
      turkish: "Żālikal-kitābu lā raiba fīh(i), hudal lil-muttaqīn(a).",
      indonesian:
          "Kitab (Al-Qur'an) ini tidak ada keraguan padanya; petunjuk bagi mereka yang bertakwa,",
    ),
  ],
);
