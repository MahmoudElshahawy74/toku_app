import 'package:flutter/material.dart';
import 'package:toku/components/Item.dart';
import 'package:toku/models/Class_item.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({Key? key}) : super(key: key);

  final List<Item_model> ColorList = const [
    Item_model(
        image: 'assets/images/colors/color_black.png',
        jpName: 'chichi',
        enName: 'Father',
        sound: 'sounds/colors/black.wav'),
    Item_model(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'haha',
        enName: 'Mother',
        sound: 'sounds/colors/brown.wav'),
    Item_model(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'ani',
        enName: 'Older brother',
        sound: 'sounds/colors/dusty yellow.wav'),
    Item_model(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'ane',
        enName: 'Older sister',
        sound: 'sounds/colors/gray.wav'),
    Item_model(
        image: 'assets/images/colors/color_green.png',
        jpName: 'otouto',
        enName: 'Younger brother',
        sound: 'sounds/colors/green.wav'),
    Item_model(
        image: 'assets/images/colors/color_red.png',
        jpName: 'imouto',
        enName: 'Younger sister',
        sound: 'sounds/colors/red.wav'),
    Item_model(
        image: 'assets/images/colors/color_white.png',
        jpName: 'sofu',
        enName: 'Grandfather',
        sound: 'sounds/colors/white.wav'),
    Item_model(
        image: 'assets/images/colors/yellow.png',
        jpName: 'sobo',
        enName: 'Grandmother',
        sound: 'sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF46322B),
        title: Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        // best way
        itemCount: ColorList.length,
        itemBuilder: (context, index) {
          return ItemList(
            color: Color(0XFF854CAE),
            Item: ColorList[index],
          );
        },
      ),
    );
  }
}
