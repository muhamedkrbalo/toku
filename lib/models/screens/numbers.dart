import 'package:flutter/material.dart';

import '../../../componets/item_numbers.dart';
import '../number_model.dart';


class NumbersPage extends StatefulWidget {
  const NumbersPage({Key? key}) : super(key: key);
  
  @override
  State<NumbersPage> createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
  final List<ItemModel> numbers = const [
    ItemModel(
     sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'ichi',
      enName: 'one',  
      image: 'assets/images/numbers/number_one.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_two_sound.mp3',
      jpName: 'Ni',
      enName: 'two',
      image: 'assets/images/numbers/number_two.png',
    ),
    ItemModel(
       sound: 'sounds/numbers/number_three_sound.mp3',
      jpName: 'San',
      enName: 'three',
      image: 'assets/images/numbers/number_three.png',
    ),
    ItemModel(
       sound: 'sounds/numbers/number_four_sound.mp3',
      jpName: 'Shi',
      enName: 'four',
      image: 'assets/images/numbers/number_four.png',
    ),
    ItemModel(
       sound: 'sounds/numbers/number_five_sound.mp3',
      jpName: 'Go',
      enName: 'five',
      image: 'assets/images/numbers/number_five.png',
    ),
    ItemModel(
       sound: 'sounds/numbers/number_six_sound.mp3',
      jpName: 'Roku',
      enName: 'six',
      image: 'assets/images/numbers/number_six.png',
    ),
    ItemModel(
       sound: 'sounds/numbers/number_seven_sound.mp3',
      jpName: 'Sebun',
      enName: 'seven',
      image: 'assets/images/numbers/number_seven.png',
    ),
    ItemModel(
       sound: 'sounds/numbers/number_eighte_sound.mp3',
      jpName: 'hachi',
      enName: 'eight',
      image: 'assets/images/numbers/number_eight.png',
    ),
    ItemModel(
       sound: 'sounds/numbers/number_nine_sound.mp3',
      jpName: 'Kyū',
      enName: 'nine',
      image: 'assets/images/numbers/number_nine.png',
    ),
    ItemModel(
       sound: 'sounds/numbers/number_ten_sound.mp3',
      jpName: 'Jū',
      enName: 'ten',
      image: 'assets/images/numbers/number_ten.png',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
        appBar:AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text("Numbers"),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: ((context, index) {
          return ItemNumber(number: numbers[index],color: const Color(0xffEf9235),);
        }))
    );
  }
}