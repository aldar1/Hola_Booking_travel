import 'package:flutter/material.dart';
import 'package:hotel_booking/components/components.dart';
import 'package:hotel_booking/screens/data_screen.dart';


class CardScroll extends StatelessWidget {
  const CardScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      // color: Colors.red,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(width: 10),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const DataScreen()
                )
              );
            },
            child: const CustomCard(
              imageUrl: 'images/hotel1.jpg',
              title: 'Woldot Hotel',
              subtitle: 'Dhaka, Bangladesh'
            )
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const DataScreen()
                )
              );
            },
            child: const CustomCard(
              imageUrl: 'images/hotel2.jpg',
              title: 'Luxurey Hotel',
              subtitle: 'Delhi, India')
            ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const DataScreen()
                )
              );
            },
            child: const CustomCard(
              imageUrl: 'images/hotel3.jpg',
              title: 'Elite Hotel',
              subtitle: 'Mogadishu, Somalia')
            ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const DataScreen()
                )
              );
            },
            child: const CustomCard(
              imageUrl: 'images/hotel4.jpg',
              title: 'Five star Hotel',
              subtitle: 'Nairobi, Kenya'
            )
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const DataScreen()
                )
              );
            },
            child: const CustomCard(
              imageUrl: 'images/hotel5.jpg',
              title: 'Lion Hotel',
              subtitle: 'Huway, China'
            )
          ),
          const SizedBox(width: 18),
        ],
      )
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    super.key,
  });

  final String imageUrl;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: BackgroundCard(
        title: title,
        subtitle: subtitle,
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          child: Image(
            width: 250,
            height: 290,
            fit: BoxFit.cover,
            image: AssetImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
