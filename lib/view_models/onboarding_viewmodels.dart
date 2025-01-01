import 'package:coffee_shop/app/app.locator.dart';
import 'package:coffee_shop/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();

  navigateToHome() {
    navigationService.navigateToHomeView();
  }
}