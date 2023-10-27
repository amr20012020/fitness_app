import 'package:fitness_app/route/routes.dart';
import 'package:fitness_app/view/dashboard/dashboardScreen.dart';
import 'package:fitness_app/view/on_boarding/onboardingScreen.dart';
import 'package:fitness_app/widgets/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness',
      debugShowCheckedModeBanner: false,
      routes: routes,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor1,
        useMaterial3: true,
        fontFamily: "Poppins"
      ),
      home: const OnBoardingScreen(),
    );
  }
}

