import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:number_to_words_english/number_to_words_english.dart';
import 'package:untitled1/customfield.dart';


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Class 10 Assignment"),
        ),
        body: GridView.builder(
            gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 4 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemCount: 12,
            itemBuilder: (context, index) {
              String word = NumberToWordsEnglish.convert(index + 1);
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.leftToRightWithFade, child: const SecondPage()));
                  },
                  child: Container(
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text(word),
                  ),
                ),
              );
            }),

      ),
    );
  }
}

//itemCount: 12,
//       gridDelegate: ,
//        itemBuilder: ((context, index){
// //
// //       return ListTile(
// //         onTap: (){
// //            //         },
// //       title: Text(word),
// //       );
//  }
//
// ),