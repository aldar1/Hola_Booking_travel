import 'package:flutter/material.dart';
import 'package:hotel_booking/components/components.dart';

class DataScreen extends StatelessWidget {
   
  const DataScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardSwiper(size: size),
            const SizedBox(height: 20,),
            const InfoDataHotel()
          ],
        ),
      )
    );
  }
}

