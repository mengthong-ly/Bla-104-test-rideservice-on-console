import 'package:bla_104/EXERICE-1/model/Ride_preference.dart';
import 'package:bla_104/EXERICE-1/ride_preferences_listener.dart';

class RidePreferencesService {
  RidePreference? _currentPreference;
  RidePreference? get currentPreference => _currentPreference;
  final List<Ridepreferenceslistener> _listener = [];

  void addListener(Ridepreferenceslistener ridePrefListener) {
    _listener.add(ridePrefListener);
  }

  void notifyListener() {
    for (var listener in _listener) {
      listener.onPreferenceSeletected(_currentPreference!);
    }
  }

  void setPreference(RidePreference pref) {
    _currentPreference = pref;
    notifyListener();
  }
  
}
