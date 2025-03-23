import 'package:bla_104/EXERICE-1/console_log.dart';
import 'package:bla_104/EXERICE-1/model/Ride_preference.dart';
import 'package:bla_104/EXERICE-1/ride_preferences_service.dart';

void main() {
  RidePreferencesService service = RidePreferencesService();

  ConsoleLog consoleLog1 = ConsoleLog();
  ConsoleLog consoleLog2 = ConsoleLog();
  ConsoleLog consoleLog3 = ConsoleLog();

  service.addListener(consoleLog1);
  service.addListener(consoleLog2);
  service.addListener(consoleLog3);

  // after set to mengthong
  service.setPreference(RidePreference(name: 'Mengthong'));
  // after set to vichet
  service.setPreference(RidePreference(name: 'Vichet'));

  // what i expect
  // Mengthong
  // Mengthong
  // Mengthong
  // Vichet
  // Vichet
  // Vichet
}
