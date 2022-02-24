import '../models/time.dart';
import 'package:brasileirao/models/titulo.dart';
import 'package:brasileirao/repositories/times_repository.dart';

class HomeController {
  TimesRepository timesRepository = TimesRepository();

  List<Time> get tabela => timesRepository.times;

  HomeController() {
    timesRepository = TimesRepository();
  }
}
