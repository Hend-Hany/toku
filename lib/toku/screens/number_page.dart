import 'package:flutter/material.dart';
import 'package:toku/toku/models/item_model.dart';

import '../components/item_list.dart';

class NumberPage extends StatelessWidget {
  NumberPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.wav',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      enName: 'One',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'Two',
      sound: 'sounds/numbers/number_two_sound.wav',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_three.png',
      jpName: "San",
      enName: 'Three',
      sound: 'sounds/numbers/number_three_sound.wav',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'shi',
      enName: 'Four',
      sound: 'sounds/numbers/number_four_sound.wav',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      enName: 'Five',
      sound: 'sounds/numbers/number_five_sound.wav',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: 'Six',
      sound: 'sounds/numbers/number_six_sound.wav',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Nana',
      enName: 'Seven',
      sound: 'sounds/numbers/number_seven_sound.wav',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'Hachi',
      enName: 'Eight',
      sound: 'sounds/numbers/number_eight_sound.wav',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyu',
      enName: 'Nine',
      sound: 'sounds/numbers/number_nine_sound.wav',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Ju',
      enName: 'Ten',
      sound: 'sounds/numbers/number_ten_sound.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF46322B),
        title: const Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return ListItem(
            color: const Color(0xFFEF9235),
            item: numbers[index],
          );
        },
      ),
    );
  }
}
