import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
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
  bool isSelected = false;
  int? selectIndex;
  @override
  void initState() {
    selectIndex = 0;
    // TODO: implement initState
    super.initState();
  }
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            actions: [
              Icon(Icons.more_vert),
            ],
            backgroundColor: Colors.deepPurple,
            title: const Text("Practise App"),
          ),
          drawer: Drawer(elevation: 10,
            shadowColor: Colors.deepPurple,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Column(
                    children: [
                      navDrawer(),
                    ],
                  )
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: ElevatedButton(onPressed: (){
                    _scaffoldKey.currentState!.openDrawer();
                  }, child: Text("Open Drawer")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget navDrawer() {
    return Material(
      child: Column(
        children: [
          ListTile(
            title: Text("Title"),
            subtitle: Text("Subtext"),
            focusColor: Colors.blue.shade200,
            onFocusChange: (value) {},
          ),
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onTap: () {
              setState(() {
                selectIndex = 0;
              });
            },
            iconColor: selectIndex == 0 ? Color(0xff7760eb) : null,
            tileColor: selectIndex == 0 ? Color(0xffcbc2f8) : null,
            title: Text("Inbox",style: TextStyle(
              color: selectIndex == 0 ? Color(0xffb67aef) : null,
            ),),
            leading: Icon(Icons.mail),
          ),
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onTap: () {
              setState(() {
                selectIndex = 1;
              });
            },
            iconColor: selectIndex == 1 ? Color(0xff7760eb) : null,
            tileColor: selectIndex == 1 ? Color(0xffcbc2f8) : null,
            title: Text("Outbox",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: selectIndex == 1 ? Color(0xffb67aef) : null,
            ),),
            leading: Icon(Icons.send),
          ), ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onTap: () {
              setState(() {
                selectIndex = 2;
              });
            },
            iconColor: selectIndex == 2 ? Color(0xff7760eb) : null,
            tileColor: selectIndex == 2 ? Color(0xffcbc2f8) : null,
            title: Text("Favourite",style: TextStyle(
              color: selectIndex == 2 ? Color(0xffb67aef) : null,
            ),),
            leading: Icon(Icons.favorite_outlined),
          ), ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onTap: () {
              setState(() {
                selectIndex = 3;
              });
            },
            iconColor: selectIndex == 3 ? Color(0xff7760eb) : null,
            tileColor: selectIndex == 3 ? Color(0xffcbc2f8) : null,
            title: Text("Archive",style: TextStyle(
              color: selectIndex == 3 ? Color(0xffb67aef) : null,
            ),),
            leading: Icon(Icons.archive),
          ), ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onTap: () {
              setState(() {
                selectIndex = 4;
              });
            },
            iconColor: selectIndex == 4 ? Color(0xff7760eb) : null,
            tileColor: selectIndex == 4 ? Color(0xffcbc2f8) : null,
            title: Text("Trash",style: TextStyle(
              color: selectIndex == 4 ? Color(0xffb67aef) : null,
            ),),
            leading: Icon(Icons.delete),
          ), ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onTap: () {
              setState(() {
                selectIndex = 5;
              });
            },
            iconColor: selectIndex == 5 ? Color(0xff7760eb) : null,
            tileColor: selectIndex == 5 ? Color(0xffcbc2f8) : null,
            title: Text("Spam",style: TextStyle(
              color: selectIndex == 5 ? Color(0xffb67aef) : null,
            ),),
            leading: Icon(Icons.info),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: Text("Lebels"),
          ),
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onTap: () {
              setState(() {
                selectIndex = 6;
              });
            },
            iconColor: selectIndex == 6 ? Color(0xff7760eb) : null,
            tileColor: selectIndex == 6 ? Color(0xffcbc2f8) : null,
            title: Text("Family",style: TextStyle(
              color: selectIndex == 6 ? Color(0xffb67aef) : null,
            ),),
            leading: Icon(Icons.library_add_check_rounded),
          ),
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onTap: () {
              setState(() {
                selectIndex = 7;
              });
            },
            iconColor: selectIndex == 7? Color(0xff7760eb) : null,
            tileColor: selectIndex == 7 ? Color(0xffcbc2f8) : null,
            title: Text("Friend",style: TextStyle(
              color: selectIndex == 7? Color(0xffb67aef) : null,
            ),),
            leading: Icon(Icons.mobile_friendly),
          ),
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onTap: () {
              setState(() {
                selectIndex = 8;
              });
            },
            iconColor: selectIndex == 8? Color(0xff7760eb) : null,
            tileColor: selectIndex == 8 ? Color(0xffcbc2f8) : null,
            title: Text("Work",style: TextStyle(
              color: selectIndex == 8 ? Color(0xffb67aef) : null,
            ),),
            leading: Icon(Icons.work),
          ), ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onTap: () {
              setState(() {
                selectIndex = 9;
              });
            },
            iconColor: selectIndex == 9? Color(0xff7760eb) : null,
            tileColor: selectIndex == 9 ? Color(0xffcbc2f8) : null,
            title: Text("Setting & account",style: TextStyle(
              color: selectIndex == 9 ? Color(0xffb67aef) : null,
            ),),
            leading: Icon(Icons.settings),
          ),

          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onTap: () {
              _scaffoldKey.currentState!.openEndDrawer();
              setState(() {
                selectIndex = 10;
              });
            },
            iconColor: selectIndex == 10? Color(0xff7760eb) : null,
            tileColor: selectIndex == 10 ? Color(0xffcbc2f8) : null,
            title: Text("Close Drawer",style: TextStyle(
              color: selectIndex == 10? Color(0xffb67aef) : null,
            ),),
            leading: Icon(Icons.close),
          ),

        ],
      ),
    );
  }
}


