import 'package:coffee_shop/view_models/onboarding_viewmodels.dart';
import 'package:coffee_shop/widgets/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => OnboardingViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage("assets/app_images/Image Onboarding.png")
              )
            ),
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "Fall in love with Coffee in Blissful Delight!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Sora"
                        )
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Welcome to our cozy coffee corner, where every cup is a delightful for you",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFD9D9D9),
                        fontFamily: "Sora"
                      ),
                    ),
                  ),
                  ElvButton(onPress: () => viewModel.navigateToHome())
                ],
              ),
            ),
          )
        );
      }
    );
  }
}