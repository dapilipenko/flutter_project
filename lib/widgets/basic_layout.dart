import 'package:flutter/material.dart';

import 'custom_image.dart';

class BasicLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Основний Layout')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Перша Кнопка')),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: CustomImage(
                imageUrl:
                    'https://www.pngall.com/wp-content/uploads/8/Sample-PNG-Image.png',
                height: 100,
                width: 100,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomImage(
                  imageUrl:
                      'https://www.pngall.com/wp-content/uploads/8/Sample-PNG-Image.png',
                  height: 80,
                  width: 80,
                ),
                CustomImage(
                  imageUrl:
                      'https://www.pngall.com/wp-content/uploads/8/Sample-PNG-Image.png',
                  height: 80,
                  width: 80,
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(bottom: 16.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Друга Кнопка'),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(width: 120, height: 120, color: Colors.grey[300]),
                CustomImage(
                  imageUrl:
                      'https://www.pngall.com/wp-content/uploads/8/Sample-PNG-Image.png',
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
