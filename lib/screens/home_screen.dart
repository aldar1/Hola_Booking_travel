import 'package:flutter/material.dart';
import 'package:hotel_booking/components/components.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            AppBarMenu(),
            SizedBox(height: 22),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Text(
                'Where Would You\nLike to Go?',
                style: TextStyle(
                  fontSize: 33,
                  color: Color.fromARGB(255, 18, 67, 130),
                  fontWeight: FontWeight.w900
                ),
              ),
            ),
            SizedBox(height: 40),
            ContainerInputButton(),
            SizedBox(height: 25),
            ContainerExpandedOption(),
            SizedBox(height: 25),
            CardScroll(),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Text(
                'Populer Hotels',
                style: TextStyle(
                  fontSize: 23,
                  color: Color.fromARGB(255, 18, 67, 130),
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            SizedBox(height: 25),
            CardScroll(),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}



class AppBarMenu extends StatelessWidget{
  const AppBarMenu({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.menu,
              size: 35,
              color: Color(0xFF1E4B72),
            ),
            UserImage()
          ],
        ),
      ),
    );
  }
}




