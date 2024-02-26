import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:badges/badges.dart' as badges;

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
  List<String> imageList = [
    'images/1.png',
    'images/2.png',
    'images/3.png',
  ];
  final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xfff2f3f4),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xfff2f3f4),
          toolbarHeight: 50,
          leading: CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            backgroundImage: AssetImage('images/img.png'),
          ),
          title: Column(

            children: [
              Container(margin: EdgeInsets.only(right: 40),
                child: Text(
                  "Good Morning",
                  style: GoogleFonts.roboto(color: Colors.grey,fontSize: 13),
                ),
              ),
              Text("Amelia Barlow",
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ],
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(top: 8, bottom: 8, right: 8),
              decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.only(right: 2, left: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    "My Flat",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w800, color: Colors.black),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.grey)
                ],
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffffffff),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffffffff)),
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: Icon(CupertinoIcons.search),
                      hintText: 'Search Category',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey)),
                ),
              ),
              CarouselSlider(
                items: imageList
                    .map((item) => Container(
                          child: Center(
                            child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                        ))
                    .toList(),
                carouselController: CarouselController(),
                options: CarouselOptions(
                    scrollPhysics: ClampingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 2.2,
                    enlargeCenterPage: true,
                    viewportFraction: 0.8,
                    autoPlayInterval: Duration(seconds: 3)),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Catagories ",
                      style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                  ),
                  ),
                  Image.asset('images/icon.png'),
                  SizedBox(
                    width: 200,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",

                          style: TextStyle(color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                      ))
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        child: Image(image: AssetImage('iconimg/apple.png')),
                        backgroundColor: Colors.grey.shade300,
                        radius: 30,
                      ),
                      Text('Fruits',style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                      )),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        child: Image(image: AssetImage('iconimg/brtree.png')),
                        backgroundColor: Colors.grey.shade300,
                        radius: 30,
                      ),
                      Text('Vagetables',style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                      )),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        child: Image(image: AssetImage('iconimg/cheese.png')),
                        backgroundColor: Colors.grey.shade300,
                        radius: 30,
                      ),
                      Text('Diary',style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                      )),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        child: Image(image: AssetImage('iconimg/meat.png')),
                        backgroundColor: Colors.grey.shade300,
                        radius: 30,
                      ),
                      Text('Meat',style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                      )),
                    ],
                  ),
                ],
              ),

              Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Text('Best selling ',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    width: 210,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(color: Colors.green,
                        fontWeight: FontWeight.bold
                        ),
                      ))
                ],
              ),
              //api thaika nauar jonno alada
              GridView.count(
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(

                    padding: const EdgeInsets.all(8),

                    child: Column(
                      children: [
                        SizedBox(height: 3,),
                        Center(child: Image.asset("images/tomato.png")),
                        SizedBox(height: 6,),
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text('Bell pepper Red',style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),),
                        ),


                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text('1kg,  4\$',style: GoogleFonts.roboto(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold
                              ),),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            CircleAvatar(
                              child: Icon(Icons.add,color: Colors.white),
                              backgroundColor: Color(0xff06d309),
                            )
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  Container(
                    
                    padding: const EdgeInsets.all(8),

                    child: Column(
                      children: [
                        SizedBox(height: 8,),
                        Center(child: Image.asset("images/meatimg.png")),
                        SizedBox(height: 12,),
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text('Lamb s Meat',style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),),
                        ),


                        Row(
                          children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('1kg,  45\$',style: GoogleFonts.roboto(
                            color: Colors.red,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                            SizedBox(
                              width: 50,
                            ),
                            CircleAvatar(
                              child: Icon(Icons.add,color: Colors.white),
                              backgroundColor: Color(0xff06d309),
                            )
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: GNav(
            backgroundColor: Color(0xfff2f3f4),
            activeColor: Colors.black,
            color: Colors.grey,
            tabs: [
              GButton(icon: CupertinoIcons.home,onPressed: (){},),
              GButton(icon: Icons.dashboard_rounded,onPressed: (){},),
              GButton(icon: CupertinoIcons.list_bullet,onPressed: (){},),
              GButton(icon: CupertinoIcons.person,onPressed: (){},)
        ]),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: badges.Badge(position: badges.BadgePosition.bottomEnd(bottom: -10,end:18),

          badgeContent: Text('4',style: TextStyle(
            fontSize: 15
          )),
          child: FloatingActionButton(
            onPressed: (){},
            child: Icon(CupertinoIcons.cart),
            backgroundColor: Color(0xff06d309),
          ),
        ),
      ),
    );
  }
}
