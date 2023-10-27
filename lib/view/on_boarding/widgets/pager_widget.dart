import 'package:fitness_app/widgets/app_colors.dart';
import 'package:flutter/cupertino.dart';

class PagerWidget extends StatelessWidget {
  final Map obj;
  const PagerWidget({super.key, required this.obj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SizedBox(
      width: media.width,
      height: media.height,
      child: Column(
        children: [
          Image.asset(obj["image"],width: media.width,fit: BoxFit.fitWidth,),
          Padding(
              padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15,),
                Text(obj["title"], style: const TextStyle(color: AppColors.blackColor,fontSize: 24,fontWeight: FontWeight.w700),),
                const SizedBox(height: 15,),
                SizedBox(
                  width: 315,
                  child: Text(
                    obj["subtitle"],
                    style: const TextStyle(
                      color: AppColors.grayColor,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
