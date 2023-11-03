import 'package:flutter/material.dart';
import 'package:learning_language/models/screens/phrases_page.dart';

import '../../../componets/category_item.dart';
import 'fameily_numbers.dart';
import 'numbers.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFEF6DB),
        appBar:AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text("Toku"),
        ),
        body: Column(
          children:  [
            Category(text:"Numbers" ,color: const Color(0xffEf9235),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return const NumbersPage();

              }));
            },),
             Category(text:"Family Members" ,color: const Color(0xff558837,),
            onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return const FamilyNumbersPage();

              }));
            },
            ),
            // const Category(text:"Colors" ,color: Color(0xff79359F),),
              Category(
              onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return const PhrasesPage();

              }));
            },
              text:"Phrases" ,color: const Color(0xff50ADC7),),
          ],
        ),
        );
     
  }
}
