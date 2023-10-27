import 'package:fitness_app/common_widget/round_gradient_button.dart';
import 'package:fitness_app/view/dashboard/dashboardScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_colors.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "/WelcomeScreen";
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset("assets/images/welcome_promo.png",width: media.width*0.75,fit: BoxFit.fitWidth,),
              SizedBox(
                height: media.width*0.05,
              ),
              const Text(
                "Welcome, Stefani",
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: media.width*0.01,
              ),
              const Text(
                "You are all set now, let's reach your\ngoals together with us",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.grayColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                ),
              ),
              const Spacer(),
              RoundGradientButton(
                  title: "Go To Home",
                  onPressed: (){
                    Navigator.pushNamed(context, DashboardScreen.routeName);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
