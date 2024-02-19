
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
   const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(
        'Contacts'
      ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(child: Text("K"), ),
              title: Text("Khaled hasan"),
              subtitle: Text("khaled.hasan@example.com"),
            ),
            ListTile(
              leading: CircleAvatar(child: Text("R"), ),
              title: Text("Rakibul Hassan"),
              subtitle: Text("rakibul.hassan@example.com"),
            ),
            ListTile(
              leading: CircleAvatar(child: Text("A"), ),
              title: Text("Alma Christensen"),
              subtitle: Text("alma.christensen@example.com"),
            ),
            ListTile(
              leading: CircleAvatar(child: Text("S"), ),
              title: Text("Sergio Hill"),
              subtitle: Text("sergio.hill@example.com"),
            ),
            ListTile(
              leading: CircleAvatar(child: Text("M"), ),
              title: Text("Malo Gonzalez"),
              subtitle: Text("malo.gonzalez@example.com"),
            ),
            ListTile(
              leading: CircleAvatar(child: Text("M"), ),
              title: Text("Miguel Owens"),
              subtitle: Text("miguel.owens@example.com"),
            ),
            ListTile(
              leading: CircleAvatar(child: Text("L"), ),
              title: Text("Lilou Dumont"),
              subtitle: Text("lilou.dumont@example.com"),
            ),
            ListTile(
              leading: CircleAvatar(child: Text("A"), ),
              title: Text("Ashley Stewart"),
              subtitle: Text("ashley.steward@example.com"),
            ),
            ListTile(
              leading: CircleAvatar(child: Text("R"), ),
              title: Text("Roman Zhang"),
              subtitle: Text("roman.zhang@example.com"),
            ),
          ],
        ),
      ),
    );
  }
}
