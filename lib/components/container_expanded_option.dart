import 'package:flutter/material.dart';
import 'package:hotel_booking/components/components.dart';

class ContainerExpandedOption extends StatelessWidget {
  const ContainerExpandedOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 35,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: const [
          SizedBox(width: 10,),
          ExpandedOption(
            activate: true,
            child: Text(
              'Hotel',
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
          ExpandedOption(
            activate: false,
            child: Text(
              'Apartment',
              style: TextStyle(
                color: Colors.grey
              )
              ),
          ),
          ExpandedOption(
            activate: false,
            child: Text(
              'Motel',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ExpandedOption(
            activate: false,
            child: Text(
              'Hostal',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ExpandedOption(
            activate: false,
            child: Text(
              'Apartment',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}