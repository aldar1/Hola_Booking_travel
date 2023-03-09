import 'package:flutter/material.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    required this.child,
    required this.title,
    required this.subtitle,
    super.key
  });

   final Widget child;
   final String title;
   final String subtitle;
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        const Positioned(
          right: 0,
          top: 0,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(
              Icons.favorite_border_outlined,
              size: 30,
            ),
          )
        ),
        Positioned(
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 5,),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14
                      ),
                    ),                    
                  ],
                )
              ],
            ),
          )
        ),
      ],
    );
  }
}