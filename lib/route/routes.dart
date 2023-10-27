import 'package:fitness_app/view/dashboard/dashboardScreen.dart';
import 'package:fitness_app/view/login/LoginScreen.dart';
import 'package:fitness_app/view/on_boarding/onboardingScreen.dart';
import 'package:fitness_app/view/on_boarding/start_Screen.dart';
import 'package:fitness_app/view/profile/complete_profile_screen.dart';
import 'package:fitness_app/view/signUp/SignupScreen.dart';
import 'package:flutter/cupertino.dart';
import '../view/welcome/welcome_screen.dart';
import '../view/your_goal/your_goal_screen.dart';

final Map<String, WidgetBuilder> routes = {
  OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  StartScreen.routeName: (context) => const StartScreen(),
  SignupScreen.routeName: (context) => const SignupScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  YourGoalScreen.routeName: (context) => const YourGoalScreen(),
  WelcomeScreen.routeName: (context) => const WelcomeScreen(),
  DashboardScreen.routeName: (context) => const DashboardScreen(),
};