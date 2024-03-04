import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/Class_item.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
    required this.Item,
    required this.color,
  }) : super(key: key);
  final Item_model Item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: Color(0xFFFFF6DC),
            child: Image.asset(Item.image!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Item.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  Item.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 8,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(Item.sound));
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 32,
            ),
          ),
          Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({Key? key, required this.PhItem, required this.color})
      : super(key: key);
  final Item_model PhItem;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  PhItem.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  PhItem.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 8,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(PhItem.sound));
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 32,
            ),
          ),
          Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
