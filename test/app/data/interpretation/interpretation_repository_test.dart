import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quran_app/app/data/interpretation/interpretation_repository.dart';
import 'package:quran_app/app/data/interpretation/model/interpretation_response.dart';
import 'package:quran_app/app/network/http_client.dart';

import '../../../utils/mock_dependencies.dart';

void main() {
  final exception = Exception('error');

  InterpretationRepository? repository;

  setUp(() {
    initializeMocks();

    final container = ProviderContainer(
      overrides: [
        HttpClient.provider.overrideWithValue(httpClient),
      ],
    );
    repository = container.read(InterpretationRepository.provider);
  });

  group('Validate getInterpretationDetails()', () {
    test('getInterpretationDetails() success', () async {
      when(
        () => httpClient.get<Map<String, dynamic>>(
          path: '/tafsir/$_number',
        ),
      ).thenAnswer((_) async => _mockInterpretationResponse);

      final result = await repository?.getInterpretationDetails(
        epistleNumber: _number,
      );

      expect(
        result,
        _expectedInterpretationResponse,
      );
    });

    test('getInterpretationDetails() got exception', () async {
      when(
        () => httpClient.get<Map<String, dynamic>>(
          path: '/tafsir/$_number',
        ),
      ).thenThrow(exception);

      expect(
        () async => repository?.getInterpretationDetails(
          epistleNumber: _number,
        ),
        throwsA(exception),
      );
    });
  });
}

const _number = 2;

final _mockInterpretationResponse = {
  "status": true,
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
  "tafsir": [
    {
      "id": 8,
      "surah": 2,
      "ayat": 1,
      "tafsir":
          "Alif Lam Mim. Ayat pertama surah Al-Baqarah ini terdiri dari huruf-huruf lepas. Sebagaimana pada surah-surah Makkiyah banyak yang dibuka dengan huruf-huruf lepas seperti Alif Lam Ra, Alif Lam Mim Ra, ha Mim, ta Ha, Kaf Ha Ya 'Ain sad, dan lain-lain.\n\nSurah-surah yang dimulai dengan huruf-huruf singkatan (muqattha'ah) semuanya berjumlah 29 surah. Selengkapnya sebagai berikut: al-Baqarah dengan Alif Lam Mim, Ali 'Imran dimulai dengan Alif Lam Mim, al-A'raf dimulai dengan Alif Lam Mim sad, Yunus dengan Alif Lam Ra, Hud dengan Alif Lam Ra, ar-Ra'd dengan Alif Lam Mim Ra; Ibrahim dengan Alif Lam Ra; al-hijr dengan Alif Lam Ra; Maryam dengan Kaf Ha Ya 'Ain sad; taha dengan ta ha; asy-Syu'ara' dengan ta Sin Mim; an-Naml dengan ta Sin; al-Qasas dengan ta Sin Mim; al-'Ankabut dengan Alif Lam Mim; ar-Rum dengan Alif Lam Mim, Luqman dengan Alif Lam Mim, as-Sajdah dengan Alif Lam Mim, Yasin dengan Ya Sin; sad dengan sad; al-Mu'min dengan ha Mim; Fussilat dengan ha Mim; asy-Syura dengan ha Mim; az-Zukhruf dengan ha Mim; ad-Dukhan dengan ha Mim; al-Jasiyah dengan ha Mim; al-Ahqaf dengan ha Mim; Qaf dengan Qaf; dan al-Qalam dengan Nun. Huruf yang disebutkan ini berjumlah 14 huruf, yaitu setengah dari huruf hijaiyah. Huruf-huruf ini adalah huruf-huruf yang banyak terpakai dalam bahasa Arab. Huruf-huruf ini ada yang disebutkan berulang-ulang.\n\nAda dua hal yang perlu dibicarakan tentang huruf-huruf abjad yang disebutkan pada permulaan beberapa surah dari Al-Qur'an itu, yaitu apa yang dimaksud dengan huruf ini, dan apa hikmahnya menyebutkan huruf-huruf ini.\n\nTentang soal pertama, maka para mufasir berlainan pendapat:\n\n1.Ada yang menyerahkan saja kepada Allah, dengan arti mereka tidak mau menafsirkan huruf-huruf itu. Mereka berkata, \"Allah saja yang mengetahui maksudnya.\" Mereka menggolongkan huruf-huruf itu ke dalam golongan ayat-ayat mutasyabihat.\n\n2.Ada yang menafsirkannya. Mufasir yang menafsirkannya ini berlain-lain pula pendapat mereka:\n\na.Ada yang berpendapat bahwa huruf-huruf itu adalah isyarat (singkatan dari kata-kata), umpamanya Alif Lam Mim. Maka Alif adalah singkatan dari \"Allah\", Lam singkatan dari \"Jibril\", dan Mim singkatan dari Muhammad, yang berarti bahwa Al-Qur'an itu datangnya dari Allah, disampaikan oleh Jibril kepada Muhammad. Pada Alif Lam Ra, Alif singkatan dari \"Ana\", Lam singkatan dari \"Allah\" dan Ra singkatan dari \"ar-Rahman\", yang berarti \"Aku Allah Yang Maha Pengasih.\"\n\nb.Ada yang berpendapat bahwa huruf-huruf itu adalah nama dari surah yang dimulai dengan huruf-huruf itu.\n\nc.Ada yang berpendapat bahwa yang dimaksud dengan huruf-huruf abjad ini adalah huruf-huruf abjad itu sendiri. Maka yang dimaksud dengan Alif adalah \"Alif\", yang dimaksud dengan Lam, adalah \"Lam\", yang dimaksud dengan Nun adalah \"Nun\", dan begitu seterusnya.\n\nd. Huruf-huruf abjad itu untuk menarik perhatian. Ada mufasir yang berpendapat bahwa huruf-huruf abjad ini didatangkan oleh Allah pada permulaan beberapa surah Al-Qur'an untuk menarik perhatian. Memulai pembicaraan dengan huruf-huruf abjad adalah suatu cara yang belum dikenal oleh Bangsa Arab pada waktu itu, karena itu maka hal ini menarik perhatian mereka.\n\ne. Untuk tantangan. Menurut para mufasir ini, huruf-huruf singkatan itu disebut Allah pada permulaan beberapa surah dari Al-Qur'an, hikmahnya adalah untuk \"menantang\". Tantangan itu bunyinya kira-kira begini: Al-Qur'an itu diturunkan dalam bahasa Arab, yaitu bahasa kamu sendiri, yang tersusun dari huruf-huruf singkatan, seperti Alif, Lam Mim Ra, Kaf Ha Ya 'Ain sad, Qaf, ta Sin dan lain-lain. Maka kalau kamu tidak percaya bahwa Al-Qur'an datangnya dari Allah dan kamu mendakwakan datangnya dari Muhammad, yakni dibuat oleh Muhammad sendiri, maka cobalah kamu buat ayat-ayat yang seperti ayat Al-Qur'an ini. Kalau Muhammad dapat membuatnya tentu kamu juga dapat membuatnya\"\n\nMaka ada \"penantang\", yaitu Allah, dan ada \"yang ditantang\", yaitu bangsa Arab, dan ada \"alat penantang\", yaitu Al-Qur'an. Sekalipun mereka adalah orang-orang yang fasih berbahasa Arab, dan mengetahui pula seluk beluk bahasa Arab menurut naluri mereka, karena di antara mereka itu ada pujangga-pujangga, penyair-penyair dan ahli-ahli pidato, namun demikian mereka tidak bisa menjawab tantangan Al-Qur'an dengan membuat ayat-ayat seperti Al-Qur'an. Ada juga di antara mereka yang memberanikan diri untuk menjawab tantangan Al-Qur'an itu, dengan mencoba membuat kalimat-kalimat seperti ayat-ayat Al-Qur'an itu, tetapi sebelum mereka ditertawakan oleh orang-orang Arab itu, lebih dahulu mereka telah ditertawakan oleh diri mereka sendiri.",
    },
    {
      "id": 9,
      "surah": 2,
      "ayat": 2,
      "tafsir":
          "Ayat ini menerangkan bahwa Al-Qur‘an tidak dapat diragukan, karena ia wahyu Allah swt yang diturunkan kepada Nabi Muhammad saw Nabi yang terakhir dengan perantaraan Jibril a.s. :\n\nDan sungguh (Al-Qur‘an) ini benar-benar diturunkan oleh Tuhan seluruh alam, yang dibawa oleh ar-Ruh al-Amin (Jibril) (asy-Syu‘ara‘/26: 192-193).\n\nYang dimaksud “Al-Kitab” (wahyu) di sini ialah Al-Qur‘an. Disebut “Al-Kitab” sebagai isyarat bahwa Al-Qur‘an harus ditulis, karena itu Nabi Muhammad saw memerintahkan para sahabat menulis ayat-ayat Al-Qur‘an. \n\nAl-Qur‘an merupakan bimbingan bagi orang yang bertakwa, sehingga dia berbahagia hidup di dunia dan di akhirat nanti. Orang yang bertakwa ialah orang yang memelihara dan menjaga dirinya dari azab Allah dengan selalu melaksanakan perintah-perintah Allah dan menjauhi larangan-larangan-Nya. Di antara tanda-tanda orang yang bertakwa ialah sebagaimana yang tersebut pada ayat-ayat berikut:",
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

const _expectedInterpretationResponse = InterpretationResponse(
  status: true,
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
  interpretations: [
    Interpretation(
      id: 8,
      surah: 2,
      verse: 1,
      interpretation:
          "Alif Lam Mim. Ayat pertama surah Al-Baqarah ini terdiri dari huruf-huruf lepas. Sebagaimana pada surah-surah Makkiyah banyak yang dibuka dengan huruf-huruf lepas seperti Alif Lam Ra, Alif Lam Mim Ra, ha Mim, ta Ha, Kaf Ha Ya 'Ain sad, dan lain-lain.\n\nSurah-surah yang dimulai dengan huruf-huruf singkatan (muqattha'ah) semuanya berjumlah 29 surah. Selengkapnya sebagai berikut: al-Baqarah dengan Alif Lam Mim, Ali 'Imran dimulai dengan Alif Lam Mim, al-A'raf dimulai dengan Alif Lam Mim sad, Yunus dengan Alif Lam Ra, Hud dengan Alif Lam Ra, ar-Ra'd dengan Alif Lam Mim Ra; Ibrahim dengan Alif Lam Ra; al-hijr dengan Alif Lam Ra; Maryam dengan Kaf Ha Ya 'Ain sad; taha dengan ta ha; asy-Syu'ara' dengan ta Sin Mim; an-Naml dengan ta Sin; al-Qasas dengan ta Sin Mim; al-'Ankabut dengan Alif Lam Mim; ar-Rum dengan Alif Lam Mim, Luqman dengan Alif Lam Mim, as-Sajdah dengan Alif Lam Mim, Yasin dengan Ya Sin; sad dengan sad; al-Mu'min dengan ha Mim; Fussilat dengan ha Mim; asy-Syura dengan ha Mim; az-Zukhruf dengan ha Mim; ad-Dukhan dengan ha Mim; al-Jasiyah dengan ha Mim; al-Ahqaf dengan ha Mim; Qaf dengan Qaf; dan al-Qalam dengan Nun. Huruf yang disebutkan ini berjumlah 14 huruf, yaitu setengah dari huruf hijaiyah. Huruf-huruf ini adalah huruf-huruf yang banyak terpakai dalam bahasa Arab. Huruf-huruf ini ada yang disebutkan berulang-ulang.\n\nAda dua hal yang perlu dibicarakan tentang huruf-huruf abjad yang disebutkan pada permulaan beberapa surah dari Al-Qur'an itu, yaitu apa yang dimaksud dengan huruf ini, dan apa hikmahnya menyebutkan huruf-huruf ini.\n\nTentang soal pertama, maka para mufasir berlainan pendapat:\n\n1.Ada yang menyerahkan saja kepada Allah, dengan arti mereka tidak mau menafsirkan huruf-huruf itu. Mereka berkata, \"Allah saja yang mengetahui maksudnya.\" Mereka menggolongkan huruf-huruf itu ke dalam golongan ayat-ayat mutasyabihat.\n\n2.Ada yang menafsirkannya. Mufasir yang menafsirkannya ini berlain-lain pula pendapat mereka:\n\na.Ada yang berpendapat bahwa huruf-huruf itu adalah isyarat (singkatan dari kata-kata), umpamanya Alif Lam Mim. Maka Alif adalah singkatan dari \"Allah\", Lam singkatan dari \"Jibril\", dan Mim singkatan dari Muhammad, yang berarti bahwa Al-Qur'an itu datangnya dari Allah, disampaikan oleh Jibril kepada Muhammad. Pada Alif Lam Ra, Alif singkatan dari \"Ana\", Lam singkatan dari \"Allah\" dan Ra singkatan dari \"ar-Rahman\", yang berarti \"Aku Allah Yang Maha Pengasih.\"\n\nb.Ada yang berpendapat bahwa huruf-huruf itu adalah nama dari surah yang dimulai dengan huruf-huruf itu.\n\nc.Ada yang berpendapat bahwa yang dimaksud dengan huruf-huruf abjad ini adalah huruf-huruf abjad itu sendiri. Maka yang dimaksud dengan Alif adalah \"Alif\", yang dimaksud dengan Lam, adalah \"Lam\", yang dimaksud dengan Nun adalah \"Nun\", dan begitu seterusnya.\n\nd. Huruf-huruf abjad itu untuk menarik perhatian. Ada mufasir yang berpendapat bahwa huruf-huruf abjad ini didatangkan oleh Allah pada permulaan beberapa surah Al-Qur'an untuk menarik perhatian. Memulai pembicaraan dengan huruf-huruf abjad adalah suatu cara yang belum dikenal oleh Bangsa Arab pada waktu itu, karena itu maka hal ini menarik perhatian mereka.\n\ne. Untuk tantangan. Menurut para mufasir ini, huruf-huruf singkatan itu disebut Allah pada permulaan beberapa surah dari Al-Qur'an, hikmahnya adalah untuk \"menantang\". Tantangan itu bunyinya kira-kira begini: Al-Qur'an itu diturunkan dalam bahasa Arab, yaitu bahasa kamu sendiri, yang tersusun dari huruf-huruf singkatan, seperti Alif, Lam Mim Ra, Kaf Ha Ya 'Ain sad, Qaf, ta Sin dan lain-lain. Maka kalau kamu tidak percaya bahwa Al-Qur'an datangnya dari Allah dan kamu mendakwakan datangnya dari Muhammad, yakni dibuat oleh Muhammad sendiri, maka cobalah kamu buat ayat-ayat yang seperti ayat Al-Qur'an ini. Kalau Muhammad dapat membuatnya tentu kamu juga dapat membuatnya\"\n\nMaka ada \"penantang\", yaitu Allah, dan ada \"yang ditantang\", yaitu bangsa Arab, dan ada \"alat penantang\", yaitu Al-Qur'an. Sekalipun mereka adalah orang-orang yang fasih berbahasa Arab, dan mengetahui pula seluk beluk bahasa Arab menurut naluri mereka, karena di antara mereka itu ada pujangga-pujangga, penyair-penyair dan ahli-ahli pidato, namun demikian mereka tidak bisa menjawab tantangan Al-Qur'an dengan membuat ayat-ayat seperti Al-Qur'an. Ada juga di antara mereka yang memberanikan diri untuk menjawab tantangan Al-Qur'an itu, dengan mencoba membuat kalimat-kalimat seperti ayat-ayat Al-Qur'an itu, tetapi sebelum mereka ditertawakan oleh orang-orang Arab itu, lebih dahulu mereka telah ditertawakan oleh diri mereka sendiri.",
    ),
    Interpretation(
      id: 9,
      surah: 2,
      verse: 2,
      interpretation:
          "Ayat ini menerangkan bahwa Al-Qur‘an tidak dapat diragukan, karena ia wahyu Allah swt yang diturunkan kepada Nabi Muhammad saw Nabi yang terakhir dengan perantaraan Jibril a.s. :\n\nDan sungguh (Al-Qur‘an) ini benar-benar diturunkan oleh Tuhan seluruh alam, yang dibawa oleh ar-Ruh al-Amin (Jibril) (asy-Syu‘ara‘/26: 192-193).\n\nYang dimaksud “Al-Kitab” (wahyu) di sini ialah Al-Qur‘an. Disebut “Al-Kitab” sebagai isyarat bahwa Al-Qur‘an harus ditulis, karena itu Nabi Muhammad saw memerintahkan para sahabat menulis ayat-ayat Al-Qur‘an. \n\nAl-Qur‘an merupakan bimbingan bagi orang yang bertakwa, sehingga dia berbahagia hidup di dunia dan di akhirat nanti. Orang yang bertakwa ialah orang yang memelihara dan menjaga dirinya dari azab Allah dengan selalu melaksanakan perintah-perintah Allah dan menjauhi larangan-larangan-Nya. Di antara tanda-tanda orang yang bertakwa ialah sebagaimana yang tersebut pada ayat-ayat berikut:",
    ),
  ],
);
