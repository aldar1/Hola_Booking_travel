import 'package:flutter/material.dart';
import 'package:hotel_booking/components/text_input_field.dart';

class ContainerInputButton extends StatelessWidget {
  const ContainerInputButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TextInputField(),
          const SizedBox(width: 20,),
          Container(
            width: size.width * 0.13,
            height: 55,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 18, 67, 130),
              borderRadius: BorderRadius.circular(14)
            ),
            child: const Icon(
              Icons.filter_list,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

