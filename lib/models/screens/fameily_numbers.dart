import 'package:flutter/material.dart';

import '../../../componets/item_numbers.dart';
import '../number_model.dart';


class FamilyNumbersPage extends StatefulWidget {
  const FamilyNumbersPage({Key? key}) : super(key: key);
  
  @override
  State<FamilyNumbersPage> createState() => _FamilyNumbersPageState();
}

class _FamilyNumbersPageState extends State<FamilyNumbersPage> {
  final List<ItemModel> numbers = const [
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      jpName: 'chich',
      enName: 'father',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      jpName: 'Ni',
      enName: 'two',
      image: 'assets/images/family_members/family_father.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      jpName: 'San',
      enName: 'three',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Shi',
      enName: 'four',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Go',
      enName: 'five',
      image: 'assets/images/family_members/family_mother.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Roku',
      enName: 'six',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Sebun',
      enName: 'seven',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'hachi',
      enName: 'eight',
      image: 'assets/images/family_members/family_son.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Kyū',
      enName: 'nine',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'Jū',
      enName: 'ten',
      image: 'assets/images/family_members/family_younger_sister.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
        appBar:AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text("Family Members"),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: ((context, index) {
          return ItemNumber(number: numbers[index],color:  Colors.green,);
        }))
    );
  }
}