import 'package:flutter/material.dart';
import 'package:toku/components/Item.dart';
import 'package:toku/models/Class_item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final List<Item_model> Numbers_list = const [
    Item_model(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    Item_model(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'two',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    Item_model(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'three',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    Item_model(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'four',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    Item_model(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'five',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    Item_model(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'six',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    Item_model(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'seven',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    Item_model(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    Item_model(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'kyū',
        enName: 'nine',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    Item_model(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'jū',
        enName: 'Ten',
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF46322B),
        title: Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        // best way
        itemCount: Numbers_list.length,
        itemBuilder: (context, index) {
          return ItemList(
            color: Color(0XFFEF9235),
            Item: Numbers_list[index],
          );
        },

        // children: get_list(Numbers_list), // another way
//////////////////////////////////////////////////////////////////// another way
        //[
        //   Item(number: Numbers_list[0]),
        //   Item(number: Numbers_list[1]),
        //   Item(number: Numbers_list[2]),
        //   Item(number: Numbers_list[3]),
        //   Item(number: Numbers_list[4]),
        //   Item(number: Numbers_list[5]),
        //   Item(number: Numbers_list[6]),
        //   Item(number: Numbers_list[7]),
        //   Item(number: Numbers_list[8]),
        //   Item(number: Numbers_list[9]),
        // ],
      ),
    );
  }

  // List<Widget> get_list(List<Number> Num) {
  //   List<Widget> Item_list = [];
  //   for (int i = 0; i < Num.length; i++) {
  //     Item_list.add(Item(number: Num[i]));
  //   }
  //   return Item_list;
  // }
}
