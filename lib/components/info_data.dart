import 'package:flutter/material.dart';
import 'package:hotel_booking/components/components.dart';
class InfoDataHotel extends StatelessWidget {
  const InfoDataHotel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
          child: SubtitleApp(subtitle: 'Hotel Grand Park',),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 6),
          child: Row(
            children: [
              Icon(Icons.star,color: Colors.amber[600],size: 18,),
              Icon(Icons.star,color: Colors.amber[600],size: 18,),
              Icon(Icons.star,color: Colors.amber[600],size: 18,),
              Icon(Icons.star,color: Colors.amber[600],size: 18,),
              const SizedBox(width: 8,),
              const Text(
                '(135 Reviews)',
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 6),
          child: Row(
            children: [
              Icon(Icons.location_on,color: Colors.grey[500],),
              const SizedBox(width: 5,),
              Text(
                "Bell's Park, Band Road, Barishal",
                style: TextStyle(
                  color: Colors.grey[500]
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: SubtitleApp(subtitle: 'Details'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 6),
          child: Text(
            'Cillum excepteur do et sit laborum. Do et id non sunt do excepteur quis tempor anim nisi dolor minim fugiat minim. Dolore excepteur cillum deserunt ipsum sint aliqua aliquip reprehenderit. Ea culpa laboris enim in. Esse ipsum excepteur commodo dolor. In ipsum occaecat amet aute culpa sint fugiat ullamco velit duis. Non deserunt ad mollit deserunt quis reprehenderit consectetur ex aliqua id duis.',
            style: TextStyle(
              color: Colors.grey[500]
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: SubtitleApp(subtitle: 'Amenities'),
        ),
        SizedBox(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(width: 22,),
              HotelContainerIcon(
                color: const Color(0xFFDBE9C2),
                iconColor: Colors.green[800]!,
                text: 'Wi-Fi',
                icon: Icons.wifi,
              ),
              const HotelContainerIcon(
                color: Color(0xFFE1ECFD),
                iconColor: Colors.blue,
                text: 'Wi-Fi',
                icon: Icons.ac_unit,
              ),
              HotelContainerIcon(
                color: const Color(0xFFFFF8D9),
                iconColor: Colors.orange[200]!,
                text: 'Wi-Fi',
                icon: Icons.restaurant_menu,
              ),
              const HotelContainerIcon(
                color: Color(0xFFE5E3FD),
                iconColor: Colors.indigo,
                text: 'Wi-Fi',
                icon: Icons.garage,
              ),
              HotelContainerIcon(
                color: const Color(0xFFDBE9C2),
                iconColor: Colors.green[800]!,
                text: 'Wi-Fi',
                icon: Icons.snowboarding
              ),

            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: const [
                Text(
                  r'$''250 ',
                  style: TextStyle(
                   fontSize: 30,
                   color: Color.fromARGB(255, 18, 67, 130),
                   fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  '/ night',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 18, 67, 130),
                padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
              child: const Text('Select Rooms',style: TextStyle(fontSize: 18),),
            )
          ],
        ),
        const SizedBox(height: 20,)
      ],
    );
  }
}

class HotelContainerIcon extends StatelessWidget {
  const HotelContainerIcon({
    super.key, 
    required this.color, 
    required this.iconColor, 
    required this.text, required this.icon,
  });

  final Color color;
  final Color iconColor;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10,right: 20),
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: color,
            // color: const Color(0xFFDBE9C2),
            borderRadius: BorderRadius.circular(12)
          ),
          child: Icon(
            icon,
            size: 35,
            color: iconColor,
            // color: Colors.green[800],
          ),
        ),
        Text(text)
      ],
    );
  }
}


