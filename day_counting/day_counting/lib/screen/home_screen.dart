import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/img/image_4.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Text(
                  'U & I',
                  style: textTheme.displayLarge,
                ),
                Text(
                  '우리 처음 만난 날',
                  style:  textTheme.bodyLarge,
                ),
                Text(
                  '2019.04.27',
                  style:  textTheme.bodyMedium,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite, // 하트모양 아이콘
                    color: Colors.red,
                    size: 80.0,
                  ),
                ),
                Text(
                  'D+1',
                  style:  textTheme.displayMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
