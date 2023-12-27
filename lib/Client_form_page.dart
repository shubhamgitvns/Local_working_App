import 'package:flutter/material.dart';
import 'package:githubtesting/App_Theam.dart';

class Client_form_Page extends StatefulWidget {
  const Client_form_Page({super.key});

  @override
  State<Client_form_Page> createState() => _Client_form_PageState();
}

class _Client_form_PageState extends State<Client_form_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: App_Theam.White,
      ),
      body: Container(
        color: App_Theam.White,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Detail page")
              ],
            )
          ],
        ),
      ),

    );
  }
}
