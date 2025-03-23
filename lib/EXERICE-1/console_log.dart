import 'package:bla_104/EXERICE-1/model/Ride_preference.dart';
import 'package:bla_104/EXERICE-1/ride_preferences_listener.dart';

class ConsoleLog extends Ridepreferenceslistener {
  @override
  void onPreferenceSeletected(RidePreference ridePref) {
    print(ridePref.name);
  }
}
