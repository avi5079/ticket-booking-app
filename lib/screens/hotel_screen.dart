import 'package:flutter/cupertino.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
        width: size.width * 0.6,
        height: 350,
        child: Column(
          children: [
            Container(
                height: 180,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/hotel-room.png"))))
          ],
        ));
  }
}
