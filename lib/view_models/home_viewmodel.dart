import 'package:stacked/stacked.dart';

class HomeViewmodel extends BaseViewModel {
  String? _selectedLocation;
  List<String> _locations = ['Karachi, Pakistan', 'Lahore, Pakistan', 'Islamabad, Pakistan', 'Quetta, Pakistan'];
  
  String? get selectedLocation => _selectedLocation;
  List<String> get locations => _locations;

  void setSelectedLocation(String? location) {
    _selectedLocation = location;
    notifyListeners();
  }

}