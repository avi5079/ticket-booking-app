// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';
import 'package:ticket_booking_app/widgets/thick_container.dart';

import '../utils/app_layout.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    // print(size.height);
    return SizedBox(
        width: size.width * 0.85,
        height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 165 : 167),
        child: Container(
          margin: EdgeInsets.only(
              right: AppLayout.getHeight(AppLayout.getHeight(16))),
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    color:
                        isColor == null ? Styles.darkBlueColor : Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppLayout.getHeight(21)),
                        topRight: Radius.circular(AppLayout.getHeight(21))),
                  ),
                  padding: EdgeInsets.all(AppLayout.getHeight(16)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(ticket['from']['code'],
                              style: isColor == null
                                  ? Styles.headLineStyle3
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle3),
                          // const Spacer() == Expanded(child: Container())
                          Expanded(
                            child: Container(),
                          ),
                          ThickContainer(isColor: isColor),
                          Expanded(
                              child: Stack(children: [
                            SizedBox(
                                height: AppLayout.getHeight(24),
                                child:
                                    const AppLayoutBuilderWidget(sections: 6)),
                            Center(
                              child: Transform.rotate(
                                  angle: 1.5,
                                  child: Icon(Icons.local_airport_rounded,
                                      color: isColor == null
                                          ? Colors.white
                                          : const Color(0xFF8ACCF7))),
                            ),
                          ])),
                          ThickContainer(isColor: isColor),
                          const Spacer(),
                          Text(ticket['to']['code'],
                              style: isColor == null
                                  ? Styles.headLineStyle3
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle3),
                        ],
                      ),
                      Gap(AppLayout.getHeight(3)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: AppLayout.getWidth(100),
                              child: Text(ticket['from']['name'],
                                  style: isColor == null
                                      ? Styles.headLineStyle4
                                          .copyWith(color: Colors.white)
                                      : Styles.headLineStyle4)),
                          Text(ticket['flying_time'],
                              style: isColor == null
                                  ? Styles.headLineStyle3
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle3),
                          SizedBox(
                            width: AppLayout.getWidth(100),
                            child: Text(ticket['to']['name'],
                                textAlign: TextAlign.end,
                                style: isColor == null
                                    ? Styles.headLineStyle4
                                        .copyWith(color: Colors.white)
                                    : Styles.headLineStyle4),
                          )
                        ],
                      )
                    ],
                  )),
              Container(
                  color: isColor == null ? Styles.orangeColor : Colors.white,
                  child: Row(
                    children: [
                      SizedBox(
                          height: AppLayout.getHeight(20),
                          width: AppLayout.getWidth(10),
                          child: const DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )))),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(AppLayout.getHeight(10)),
                        child: LayoutBuilder(builder: (BuildContext context,
                            BoxConstraints boxConstraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (boxConstraints.constrainWidth() / 15).floor(),
                                (index) => SizedBox(
                                      width: AppLayout.getWidth(5),
                                      height: AppLayout.getHeight(1),
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: isColor == null
                                                  ? Colors.white
                                                  : Colors.grey.shade300)),
                                    )),
                          );
                        }),
                      )),
                      SizedBox(
                          height: AppLayout.getHeight(20),
                          width: AppLayout.getWidth(10),
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                        AppLayout.getHeight(10)),
                                    bottomLeft: Radius.circular(
                                        AppLayout.getHeight(10)),
                                  ))))
                    ],
                  )),
              Container(
                  decoration: BoxDecoration(
                    color: isColor == null ? Styles.orangeColor : Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                            AppLayout.getHeight(isColor == null ? 21 : 0)),
                        bottomRight: Radius.circular(
                            AppLayout.getHeight(isColor == null ? 21 : 0))),
                  ),
                  padding: EdgeInsets.only(
                      left: AppLayout.getWidth(16),
                      top: AppLayout.getHeight(10),
                      right: AppLayout.getWidth(16),
                      bottom: AppLayout.getHeight(16)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                              firstText: ticket['date'],
                              secondText: "Date",
                              alignment: CrossAxisAlignment.start,
                              isColor: isColor),
                          AppColumnLayout(
                              firstText: ticket['departure_time'],
                              secondText: "Departure time",
                              alignment: CrossAxisAlignment.center,
                              isColor: isColor),
                          AppColumnLayout(
                              firstText: "${ticket['number']}",
                              secondText: "Number",
                              alignment: CrossAxisAlignment.end,
                              isColor: isColor),
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ));
  }
}
