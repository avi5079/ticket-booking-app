// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
        width: size.width * 0.6,
        height: AppLayout.getHeight(350),
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(15),
            vertical: AppLayout.getHeight(17)),
        margin: EdgeInsets.only(
            right: AppLayout.getWidth(17), top: AppLayout.getHeight(5)),
        decoration: BoxDecoration(
            color: Styles.primaryColor,
            borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 20,
                spreadRadius: 5,
              )
            ]),
        child: Column(
          children: [
            Container(
                height: AppLayout.getHeight(180),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(12)),
                    color: Styles.primaryColor,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/${hotel['image']}")))),
            Gap(AppLayout.getHeight(15)),
            SizedBox(
              width: double.infinity,
              child: Text(hotel['place'],
                  style:
                      Styles.headLineStyle2.copyWith(color: Styles.kakiColor)),
            ),
            Gap(AppLayout.getHeight(5)),
            SizedBox(
              width: double.infinity,
              child: Text(hotel['destination'],
                  style: Styles.headLineStyle3.copyWith(color: Colors.white)),
            ),
            Gap(AppLayout.getHeight(8)),
            SizedBox(
              width: double.infinity,
              child: Text("\$${hotel['price']}/night",
                  style:
                      Styles.headLineStyle.copyWith(color: Styles.kakiColor)),
            )
          ],
        ));
  }
}
