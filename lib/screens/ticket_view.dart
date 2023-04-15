import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/thick_container.dart';

import '../utils/app_layout.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
        width: size.width,
        height: size.height,
        child: Container(
          margin: const EdgeInsets.only(left: 16),
          child: Column(
            children: [
              Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF526799),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21)),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("NYC",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                          // const Spacer() == Expanded(child: Container())
                          Expanded(
                            child: Container(),
                          ),
                          const ThickContainer(),
                          Expanded(
                              child: Stack(children: [
                            SizedBox(
                                height: 24,
                                child: LayoutBuilder(
                                  builder: (BuildContext context,
                                      BoxConstraints constraints) {
                                    // ignore: avoid_print
                                    print(
                                        "The width is ${constraints.constrainWidth()}");
                                    return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          (constraints.constrainWidth() / 6)
                                              .floor(),
                                          (index) => const SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Colors.white),
                                              ))),
                                    );
                                  },
                                )),
                            Center(
                              child: Transform.rotate(
                                  angle: 1.5,
                                  child: const Icon(Icons.local_airport_rounded,
                                      color: Colors.white)),
                            ),
                          ])),
                          const ThickContainer(),
                          const Spacer(),
                          Text("LDN",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                        ],
                      ),
                      const Gap(3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: 100,
                              child: Text("New York",
                                  style: Styles.headLineStyle4
                                      .copyWith(color: Colors.white))),
                          Text("8H 30M",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                          SizedBox(
                            width: 100,
                            child: Text("London",
                                textAlign: TextAlign.end,
                                style: Styles.headLineStyle4
                                    .copyWith(color: Colors.white)),
                          )
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
