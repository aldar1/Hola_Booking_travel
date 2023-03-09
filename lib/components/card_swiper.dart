import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: size.height* 0.4,
      child: Stack(
        children: [
          Swiper(

            layout: SwiperLayout.DEFAULT,
            itemCount: 3,
            itemBuilder: (contex,index){
              return const Image(
                fit: BoxFit.cover,
                image: AssetImage('images/hotel1.jpg')
              );
            },
            pagination: const SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                color: Colors.white, 
                activeColor: Color(0xff38547C)),
              ),
          ),
          Positioned(
            left: 0,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Icon(Icons.arrow_back_ios_new_sharp,color: Color.fromARGB(255, 18, 67, 130),),
              ),
            )
          ),
          Positioned(
            right: 0,
            child: Container(
              margin: const EdgeInsets.all(20),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Icon(Icons.favorite_border,color: Color.fromARGB(255, 18, 67, 130),),
            )
          ),
        ],
      ),
    );
  }
}