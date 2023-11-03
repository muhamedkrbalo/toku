
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/number_model.dart';

class ItemNumber extends StatelessWidget {
  const ItemNumber({Key? key,required this.number,required this.color}) : super(key: key);

  final ItemModel number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return  Container(
              height: 100,
              color: color,
              child: Row(
                children: [
                  Container(
                    color: const Color(0xffFFF6DE),
                    child: Image.asset(number.image!)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          Text(number.jpName,style: const TextStyle(color: Colors.white,fontSize:18 ),),
                          Text(number.enName,style: const TextStyle(color: Colors.white,fontSize:18 ),),
                        ],
                      ),
                    ),
                    const Spacer(),
                    IconButton(onPressed: (){
                     final player = AudioPlayer();
                     player.play(AssetSource(number.sound));
                    }, icon: const Icon(Icons.play_arrow))
                ],
              ),
            );
         
  }
}