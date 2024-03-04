import 'package:flutter/material.dart';
import 'package:toku/components/Item.dart';
import 'package:toku/models/Class_item.dart';

class FamilyMemberPage extends StatelessWidget {
  const FamilyMemberPage({Key? key}) : super(key: key);

  final List<Item_model> FamilyMemberList = const [
    Item_model(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'chichi',
        enName: 'Father',
        sound: 'sounds/family_members/father.wav'),
    Item_model(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'haha',
        enName: 'Mother',
        sound: 'sounds/family_members/mother.wav'),
    Item_model(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'ani',
        enName: 'Older brother',
        sound: 'sounds/family_members/older bother.wav'),
    Item_model(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'ane',
        enName: 'Older sister',
        sound: 'sounds/family_members/older sister.wav'),
    Item_model(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'otouto',
        enName: 'Younger brother',
        sound: 'sounds/family_members/younger brother.wav'),
    Item_model(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'imouto',
        enName: 'Younger sister',
        sound: 'sounds/family_members/younger sister.wav'),
    Item_model(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'sofu',
        enName: 'Grandfather',
        sound: 'sounds/family_members/grand father.wav'),
    Item_model(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'sobo',
        enName: 'Grandmother',
        sound: 'sounds/family_members/grand mother.wav'),
    Item_model(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'musuko',
        enName: 'Son',
        sound: 'sounds/family_members/son.wav'),
    Item_model(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'musume',
        enName: 'Daughter',
        sound: 'sounds/family_members/daughter.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF46322B),
        title: Text(
          'Family Members',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        // best way
        itemCount: FamilyMemberList.length,
        itemBuilder: (context, index) {
          return ItemList(
            color: Color(0XFF5D8B3E),
            Item: FamilyMemberList[index],
          );
        },
      ),
    );
  }
}
