import 'package:stacked/stacked.dart';

class HomeViewmodel extends BaseViewModel {
  String? _selectedLocation;
  String? _selectedCategory;
  final List<String> _locations = ['Karachi, Pakistan', 'Lahore, Pakistan', 'Islamabad, Pakistan', 'Quetta, Pakistan'];
  final List<String> _categories = ["All Coffee", "Machiato", "Latte", "Americano"];

  String? get selectedLocation => _selectedLocation;
  List<String> get locations => _locations;

  String? get selectedCategory => _selectedCategory;
  List<String> get categories => _categories;

  void setSelectedLocation(String? location) {
    _selectedLocation = location;
    notifyListeners();
  }

  void setSelectedCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

}