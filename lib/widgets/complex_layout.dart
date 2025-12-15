import 'package:flutter/material.dart';

import '../widgets/custom_image.dart';

class ComplexLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Складний Layout')),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: CustomImage(
                      imageUrl:
                          'https://www.pngall.com/wp-content/uploads/8/Sample-PNG-Image.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 60,
                        color: Colors.blue[100],
                        child: Center(child: Text('Фон Stack')),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Кнопка в Stack'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: EdgeInsets.symmetric(vertical: 4.0),
                          child: ListTile(
                            leading: Icon(Icons.favorite),
                            title: Text('Складний елемент $index'),
                            subtitle: Text('Опис з мережевим зображенням'),
                            trailing: CustomImage(
                              imageUrl:
                                  'https://www.pngall.com/wp-content/uploads/8/Sample-PNG-Image.png',
                              width: 40,
                              height: 40,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          child: Text('Ліва'),
                          onPressed: () {},
                        ),
                      ),
                      Flexible(
                        child: ElevatedButton(
                          child: Text('Права'),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
