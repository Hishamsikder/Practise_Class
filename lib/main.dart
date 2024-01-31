import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
          title: const Text("Practise App"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.amber,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        offset: const Offset(0, 4),
                        blurRadius: 5,
                        spreadRadius: 1
                      )
                    ]
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                color: Colors.amber,
                child: const Text("Class 3 Class 4"),
              ),
              const SizedBox(height: 30,),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.amber,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600,
                          offset: const Offset(0, -4),
                          blurRadius: 5,
                          spreadRadius: 1
                      )
                    ]
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(4, 4),
                          color: Colors.grey.shade600,
                          blurRadius: 5,
                          spreadRadius: 1
                      ),

                    ]
                ),
                child: const Center(child: Padding(
                  padding: EdgeInsets.only(right: 170.0),
                  child: Text("influxdev.com"),
                )),
              ),
              const SizedBox(height: 20,),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Red",style: TextStyle(
                        fontWeight: FontWeight.bold,color: Colors.white
                      ),),
                    ),
                  ),
                  Positioned(
                      top: 30,
                      left: 30,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.purple,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Purple",style: TextStyle(
                            fontWeight: FontWeight.bold,color: Colors.white
                          ),),
                        ),
                      )),
                  Positioned(
                      top: 60,
                      left: 60,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.yellow,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Yellow",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            //vai White color dakha jai na daika black color dilam
                            color: Colors.black
                          ),),
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
