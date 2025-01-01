import 'package:coffee_shop/views/home_view.dart';
import 'package:coffee_shop/views/onboarding_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
    routes: [
      MaterialRoute(
        page: OnboardingView,
        initial: true
      ),
      MaterialRoute(
        page: HomeView,
      )
    ],
    dependencies: [
      Singleton(
        classType: NavigationService
      ),
    ]
  )
class App {}