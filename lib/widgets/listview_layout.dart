import 'package:flutter/material.dart';

import '../widgets/custom_image.dart';

class ListViewLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Робота з ListViews')),
      body: Column(
        children: [
          CustomImage(
            imageUrl:
                'https://www.pngall.com/wp-content/uploads/8/Sample-PNG-Image.png',
            height: 150,
            width: double.infinity,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.star, color: Colors.yellow),
                  title: Text('Елемент $index з текстом'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    print('Натиснуто елемент $index');
                  },
                );
              },
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Кнопка внизу')),
        ],
      ),
    );
  }
}
