import 'package:flutter/material.dart';
import 'package:toku/toku/components/phrese_item.dart';
import 'package:toku/toku/models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> phrases = const [
    ItemModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'Kimasu ka',
      enName: 'Are you coming ?',
    ),
    ItemModel(
      jpName: 'Kōdoku o wasurenaide kudasai',
      enName: "Don't forget to subscribe !",
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      jpName: "Go kibun wa ikagadesu ka",
      enName: 'How are you feeling ?',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'I love anime .',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      jpName: 'Watashi wa puroguramingu ga daisukidesu',
      enName: 'I love programming .',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
      jpName: 'Puroguramingu wa kantan',
      enName: 'Programming is easy .',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      jpName: 'namae wa nandesuka',
      enName: 'What is your name ?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    ItemModel(
      jpName: 'Doko ni iku no',
      enName: 'Where are you going ?',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    ItemModel(
      jpName: 'Hai, watashiwa keteimasu',
      enName: "Yes, I'm coming .",
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF46322B),
        title: const Text(
          'Phrases',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (BuildContext context, int index) {
          return PhraseItem(
            item: phrases[index],
            color: const Color(0xff50ADC7),
          );
        },
      ),
    );
  }
}
