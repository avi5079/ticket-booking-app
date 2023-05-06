import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';

import '../utils/app_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: AppLayout.getHeight(90),
                    width: AppLayout.getWidth(90),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(90)),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/user.png")))),
                Gap(AppLayout.getHeight(10)),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Olivia Rodrigo", style: Styles.headLineStyle),
                      Gap(AppLayout.getHeight(2)),
                      Text("New-York",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade500)),
                      Gap(AppLayout.getHeight(5)),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(100)),
                            color: const Color.fromARGB(255, 255, 208, 137),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getWidth(3),
                              vertical: AppLayout.getHeight(3)),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                      const Color(0xFF526799).withOpacity(0.9),
                                ),
                                child: const Icon(
                                  FluentSystemIcons.ic_fluent_shield_filled,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                              Gap(AppLayout.getWidth(5)),
                              const Text("Premium Status",
                                  style: TextStyle(
                                    color: Color(0xFF526799),
                                    fontWeight: FontWeight.w600,
                                  )),
                            ],
                          ))
                    ]),
                const Spacer(),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(5)),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text("Edit",
                            style: Styles.textStyle.copyWith(
                                color: Styles.primaryColor,
                                fontWeight: FontWeight.w300)),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Gap(AppLayout.getHeight(8)),
            Divider(color: Colors.grey.shade300),
            Gap(AppLayout.getHeight(8)),
            Stack(
              children: [
                Container(
                  height: AppLayout.getHeight(90),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Styles.primaryColor.withOpacity(0.9),
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(18)),
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                      padding: EdgeInsets.all(AppLayout.getWidth(30)),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18, color: const Color(0xFF264CD2)),
                      )),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(5),
                      vertical: AppLayout.getHeight(16)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.primaryColor,
                          size: 27,
                        ),
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("You've got a new award",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text("You had more than 100 flights this year",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 16)),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Gap(AppLayout.getHeight(25)),
            Text("Accumulated miles", style: Styles.headLineStyle2),
            Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(15),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(18),
                    ),
                    color: Styles.bgColor,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Gap(AppLayout.getHeight(15)),
                    Text("192802",
                        style: TextStyle(
                          fontSize: 45,
                          color: Styles.textColor,
                          fontWeight: FontWeight.w600,
                        )),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Miles accrued",
                            style:
                                Styles.headLineStyle4.copyWith(fontSize: 16)),
                        Text("6 May 2023",
                            style:
                                Styles.headLineStyle4.copyWith(fontSize: 16)),
                      ],
                    ),
                    Divider(color: Colors.grey.shade300),
                    Gap(AppLayout.getHeight(15)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                            firstText: "23 042",
                            secondText: "Miles",
                            alignment: CrossAxisAlignment.start,
                            isColor: false),
                        AppColumnLayout(
                            firstText: "Airline CO",
                            secondText: "Received from",
                            alignment: CrossAxisAlignment.end,
                            isColor: false),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(sections: 12, isColor: true),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                            firstText: "24",
                            secondText: "Miles",
                            alignment: CrossAxisAlignment.start,
                            isColor: false),
                        AppColumnLayout(
                            firstText: "Mc Donal's",
                            secondText: "Received from",
                            alignment: CrossAxisAlignment.end,
                            isColor: false),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(sections: 12, isColor: true),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                            firstText: "52 340",
                            secondText: "Miles",
                            alignment: CrossAxisAlignment.start,
                            isColor: false),
                        AppColumnLayout(
                            firstText: "Exuma",
                            secondText: "Received from",
                            alignment: CrossAxisAlignment.end,
                            isColor: false),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(10)),
                        child: Text("How to get more miles",
                            style: Styles.textStyle.copyWith(
                                color: Styles.primaryColor,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ],
                )),
          ],
        ));
  }
}
