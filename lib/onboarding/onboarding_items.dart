import 'package:app/onboarding/onboarding_info.dart';

class OnboardingItems {
  List<OnboardingInfo> items = [
    OnboardingInfo(
        title: 'Discover Your Ideal Service',
        description: 'Search, browse, and find the perfect services',
        image: 'assets/Pictures/Discover.png'),
    OnboardingInfo(
      title: 'Secure Your Spot',
      description: 'Choose your preferred date, time, and services',
      image: 'assets/Pictures/Schedule.png',
    ),
    OnboardingInfo(
        title: 'Your Appointment is Confirmed',
        description: 'Your go-to appointment booking solution',
        image: 'assets/Pictures/Appoint.png')
  ];
}
