import 'package:fitness_app/widgets/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {

  List latestArr = [
    {
      "image": "assets/images/Workout1.png",
      "title": "Fullbody Workout",
      "time": "Today, 03:00pm"
    },
    {
      "image": "assets/images/Workout2.png",
      "title": "Upperbody Workout",
      "time": "June 05, 02:00pm"
    },
  ];

  List whatArr = [
    {
      "image": "assets/images/what_1.png",
      "title": "Fullbody Workout",
      "exercises": "11 Exercises",
      "time": "32mins"
    },
    {
      "image": "assets/images/what_2.png",
      "title": "Lowebody Workout",
      "exercises": "12 Exercises",
      "time": "40mins"
    },
    {
      "image": "assets/images/what_3.png",
      "title": "AB Workout",
      "exercises": "14 Exercises",
      "time": "20mins"
    }
  ];


  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(colors: AppColors.primaryG)),
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0,
              title: const Text(
                "Workout Tracker",
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              actions: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.lightGrayColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      "assets/icons/more_icon.png",
                      width: 15,
                      height: 15,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
            SliverAppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0,
              leadingWidth: 0,
              leading: const SizedBox(),
              expandedHeight: media.height * 0.21,
              flexibleSpace: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: media.width * 0.5,
                width: double.maxFinite,
                child: LineChart(
                  LineChartData(
                    lineTouchData: LineTouchData(
                      enabled: true,
                      handleBuiltInTouches: false,
                      touchCallback:
                          (FlTouchEvent event, LineTouchResponse? response) {
                        if (response == null || response.lineBarSpots == null) {
                          return;
                        }
                      },
                      mouseCursorResolver:
                          (FlTouchEvent event, LineTouchResponse? response) {
                        if (response == null || response.lineBarSpots == null) {
                          return SystemMouseCursors.basic;
                        }
                        return SystemMouseCursors.click;
                      },
                      getTouchedSpotIndicator:
                          (LineChartBarData barData, List<int> spotIndexes) {
                        return spotIndexes.map((index) {
                          return TouchedSpotIndicatorData(
                            FlLine(
                              color: Colors.transparent,
                            ),
                            FlDotData(
                              show: true,
                              getDotPainter: (spot, percent, barData, index) =>
                                  FlDotCirclePainter(
                                    radius: 3,
                                    color: Colors.white,
                                    strokeWidth: 3,
                                    strokeColor: AppColors.secondaryColor1,
                                  ),
                            ),
                          );
                        }).toList();
                      },
                      touchTooltipData: LineTouchTooltipData(
                        tooltipBgColor: AppColors.secondaryColor1,
                        tooltipRoundedRadius: 20,
                        getTooltipItems: (List<LineBarSpot> lineBarsSpot) {
                          return lineBarsSpot.map((lineBarSpot) {
                            return LineTooltipItem(
                              "${lineBarSpot.x.toInt()} mins ago",
                              const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          }).toList();
                        },
                      ),
                    ),
                    lineBarsData: lineBarsData1,
                    minY: -0.5,
                    maxY: 110,
                    titlesData: FlTitlesData(
                        show: true,
                        leftTitles: AxisTitles(),
                        topTitles: AxisTitles(),
                        bottomTitles: AxisTitles(
                          sideTitles: bottomTitles,
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: rightTitles,
                        )),
                    gridData: FlGridData(
                      show: true,
                      drawHorizontalLine: true,
                      horizontalInterval: 25,
                      drawVerticalLine: false,
                      getDrawingHorizontalLine: (value) {
                        return FlLine(
                          color: AppColors.whiteColor.withOpacity(0.15),
                          strokeWidth: 2,
                        );
                      },
                    ),
                    borderData: FlBorderData(
                      show: true,
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: Container(),

      ),
    );
  }
}
