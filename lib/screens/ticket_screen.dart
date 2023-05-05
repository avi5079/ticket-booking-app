import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../utils/app_info_list.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(children: [
          ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(20),
                  vertical: AppLayout.getHeight(20)),
              children: [
                Text("Tickets", style: Styles.headLineStyle),
                Gap(AppLayout.getHeight(20)),
                const AppTicketTabs(
                    firstTab: "Upcoming", secondTab: "Previous"),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
                  child: TicketView(ticket: ticketList[0], isColor: true),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                    margin: EdgeInsets.only(
                        left: AppLayout.getWidth(15),
                        right: AppLayout.getWidth(16)),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(15),
                        vertical: AppLayout.getHeight(20)),
                    color: Colors.white,
                    child: Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            AppColumnLayout(
                              firstText: "Flutter DB",
                              secondText: "Passenger",
                              alignment: CrossAxisAlignment.start,
                              isColor: false,
                            ),
                            AppColumnLayout(
                              firstText: "5221 364869",
                              secondText: "passport",
                              alignment: CrossAxisAlignment.end,
                              isColor: false,
                            ),
                          ]),
                      Gap(AppLayout.getHeight(20)),
                      const AppLayoutBuilderWidget(
                          sections: 15, isColor: false, width: 5),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            AppColumnLayout(
                              firstText: "364738 28274478",
                              secondText: "Number of E-ticket",
                              alignment: CrossAxisAlignment.start,
                              isColor: false,
                            ),
                            AppColumnLayout(
                              firstText: "B2SG28",
                              secondText: "Booking Code",
                              alignment: CrossAxisAlignment.end,
                              isColor: false,
                            ),
                          ]),
                      Gap(AppLayout.getHeight(20)),
                      const AppLayoutBuilderWidget(
                          sections: 15, isColor: false, width: 5),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.zero,
                                  height: AppLayout.getHeight(20),
                                  width: AppLayout.getWidth(50),
                                  child: Image.asset(
                                    "assets/images/visa.jpg",
                                    scale: 11,
                                  ),
                                ),
                                Text("*** 2462", style: Styles.headLineStyle3),
                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              "Payment method",
                              style: Styles.headLineStyle4,
                            ),
                          ]),
                          const AppColumnLayout(
                              firstText: "\$249.99",
                              secondText: "Price",
                              alignment: CrossAxisAlignment.end,
                              isColor: false)
                        ],
                      ),
                      const SizedBox(height: 1),
                    ])),
                /* Bar code */
                const SizedBox(height: 1),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(AppLayout.getWidth(21)),
                          bottomLeft:
                              Radius.circular(AppLayout.getHeight(21)))),
                  margin: EdgeInsets.only(
                      left: AppLayout.getWidth(15),
                      right: AppLayout.getWidth(15)),
                  padding: EdgeInsets.only(
                      top: AppLayout.getWidth(20),
                      bottom: AppLayout.getWidth(20)),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(15)),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(15)),
                      child: BarcodeWidget(
                          barcode: Barcode.code128(),
                          data: 'https://github.com/martinovovo',
                          drawText: false,
                          color: Styles.textColor,
                          width: double.infinity,
                          height: 70),
                    ),
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(ticket: ticketList[0]),
                ),
              ]),
        ]));
  }
}
