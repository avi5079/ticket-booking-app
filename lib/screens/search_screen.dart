import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/double_text_widget.dart';
import 'package:ticket_booking_app/widgets/icon_text_widget.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getHeight(2)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("What are\nyou looking for?",
                  style: Styles.headLineStyle
                      .copyWith(fontSize: AppLayout.getHeight(35))),
              Gap(AppLayout.getHeight(20)),
              FittedBox(
                child: Container(
                  padding: const EdgeInsets.all(1.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(50),
                    ),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      Container(
                          width: size.width * 0.44,
                          padding: EdgeInsets.symmetric(
                              vertical: AppLayout.getHeight(7)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(AppLayout.getWidth(50))),
                            color: Colors.white,
                          ),
                          child: const Center(child: Text("Airline tickets"))),
                      Container(
                          width: size.width * 0.44,
                          padding: EdgeInsets.symmetric(
                              vertical: AppLayout.getHeight(7)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(AppLayout.getWidth(50))),
                            color: const Color(0xFFF4F6FD),
                          ),
                          child: const Center(child: Text("Hotels")))
                    ],
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(25)),
              const AppIconText(
                  icon: Icons.flight_takeoff_rounded, text: "Departure"),
              Gap(AppLayout.getHeight(15)),
              const AppIconText(
                  icon: Icons.flight_land_rounded, text: "Arrival"),
              Gap(AppLayout.getHeight(20)),
              Container(
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(17),
                      horizontal: AppLayout.getWidth(18)),
                  decoration: BoxDecoration(
                    color: const Color(0xD91130CE),
                    borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                  ),
                  child: Center(
                    child: Text(
                      "find tickets",
                      style: Styles.textStyle.copyWith(color: Colors.white),
                    ),
                  )),
              Gap(AppLayout.getHeight(40)),
              const AppDoubleTextWidget(
                  bigText: "View Flights", smallText: "View all"),
            ]));
  }
}
