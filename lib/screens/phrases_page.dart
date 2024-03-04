import 'package:flutter/material.dart';
import 'package:toku/components/Item.dart';
import 'package:toku/models/Class_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<Item_model> PhrasesList = const [
    Item_model(
        jpName: 'chichi',
        enName: 'Father',
        sound: 'sounds/family_members/father.wav'),
    Item_model(
        jpName: 'haha',
        enName: 'Mother',
        sound: 'sounds/family_members/mother.wav'),
    Item_model(
        jpName: 'ani',
        enName: 'Older brother',
        sound: 'sounds/family_members/older bother.wav'),
    Item_model(
        jpName: 'ane',
        enName: 'Older sister',
        sound: 'sounds/family_members/older sister.wav'),
    Item_model(
        jpName: 'otouto',
        enName: 'Younger brother',
        sound: 'sounds/family_members/younger brother.wav'),
    Item_model(
        jpName: 'imouto',
        enName: 'Younger sister',
        sound: 'sounds/family_members/younger sister.wav'),
    Item_model(
        jpName: 'sofu',
        enName: 'Grandfather',
        sound: 'sounds/family_members/grand father.wav'),
    Item_model(
        jpName: 'sobo',
        enName: 'Grandmother',
        sound: 'sounds/family_members/grand mother.wav'),
    Item_model(
        jpName: 'musuko',
        enName: 'Son',
        sound: 'sounds/family_members/son.wav'),
    Item_model(
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
          'Phrases',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        // best way
        itemCount: PhrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            color: Color(0XFF51D0B5),
            PhItem: PhrasesList[index],
          );
        },
      ),
    );
  }
}
