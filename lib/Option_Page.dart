import 'package:flutter/material.dart';

class Option_Page extends StatefulWidget {
  const Option_Page({super.key});

  @override
  State<Option_Page> createState() => _Option_PageState();
}

class _Option_PageState extends State<Option_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade600,
      ),
      body: SafeArea(
        child: Container(
            color: Colors.teal.shade600,
          child: Column(
            children: [
              Center(
                child: Text("I am Option Page",style: TextStyle(color: Colors.white),
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
