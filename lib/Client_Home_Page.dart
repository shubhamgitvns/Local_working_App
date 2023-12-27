import 'package:flutter/material.dart';
import 'package:githubtesting/App_Theam.dart';
class Client_Home_Page extends StatefulWidget {
  const Client_Home_Page({super.key});

  @override
  State<Client_Home_Page> createState() => _Client_Home_PageState();
}

class _Client_Home_PageState extends State<Client_Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: App_Theam.bgcolor,
      ),
      body: Container(
        color: App_Theam.White,
        child: Column(
          children: [
            Row(
              children: [
                Text("The Home Page")
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
