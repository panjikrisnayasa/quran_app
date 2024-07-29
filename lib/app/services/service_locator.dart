import 'package:audio_service/audio_service.dart';
import 'package:get_it/get_it.dart';
import 'package:quran_app/app/services/my_audio_handler.dart';

GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  getIt.registerSingleton<AudioHandler>(await initAudioService());
}
