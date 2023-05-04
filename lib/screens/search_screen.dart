import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/double_text_widget.dart';
import 'package:ticket_booking_app/widgets/icon_text_widget.dart';

import '../widgets/ticket_tabs.dart';
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
            const AppTicketTabs(
                firstTab: "Airplane Tickets", secondTab: "Hotels"),
            Gap(AppLayout.getHeight(25)),
            const AppIconText(
                icon: Icons.flight_takeoff_rounded, text: "Departure"),
            Gap(AppLayout.getHeight(15)),
            const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
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
            Gap(AppLayout.getHeight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: AppLayout.getHeight(395),
                    width: size.width * 0.42,
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(10),
                        vertical: AppLayout.getHeight(15)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 1,
                            spreadRadius: 1)
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                            height: AppLayout.getHeight(190),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    AppLayout.getHeight(12)),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/one.jpg"),
                                ))),
                        Gap(AppLayout.getHeight(12)),
                        Text(
                          "20% discount on the early booking of this flight, Don't miss out this chance",
                          style: Styles.headLineStyle2,
                        )
                      ],
                    )),
                Column(children: [
                  Stack(
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getWidth(10),
                              vertical: AppLayout.getHeight(15)),
                          width: size.width * 0.44,
                          height: AppLayout.getHeight(190),
                          decoration: BoxDecoration(
                              color: const Color(0xFF3AB8B8),
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(18))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Discount\n for survey",
                                  style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                              Gap(AppLayout.getHeight(10)),
                              Text(
                                  "Take the survey about our services and get discount",
                                  style: Styles.headLineStyle2.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Colors.white)),
                            ],
                          )),
                      Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: const Color(0xFF189999)),
                              color: Colors.transparent,
                            ),
                          ))
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(15),
                          horizontal: AppLayout.getWidth(15)),
                      width: size.width * 0.44,
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18)),
                        color: const Color(0xFFEC6545),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Take Love",
                            textAlign: TextAlign.center,
                            style: Styles.headLineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Gap(AppLayout.getHeight(5)),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: '😍', style: TextStyle(fontSize: 38)),
                            TextSpan(
                                text: '🥰', style: TextStyle(fontSize: 50)),
                            TextSpan(
                                text: '😘', style: TextStyle(fontSize: 38)),
                          ]))
                        ],
                      ))
                ])
              ],
            )
          ],
        ));
  }
}
