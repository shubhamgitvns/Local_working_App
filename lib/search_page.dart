import 'package:flutter/material.dart';
import 'package:githubtesting/App_Theam.dart';
class Search_Page extends StatefulWidget {
  const Search_Page({super.key});

  @override
  State<Search_Page> createState() => _Search_PageState();
}

class _Search_PageState extends State<Search_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        backgroundColor: App_Theam.Teal,
      )),
      body: Container(
        color: App_Theam.White,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: App_Theam.White,
                              boxShadow: [
                                const BoxShadow(
                                  color: Colors.transparent,
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 10,
                                  spreadRadius: 1.0,
                                ),
                                BoxShadow(
                                  color: App_Theam.border_color,
                                  offset: Offset(-2.0, -2.0),
                                  blurRadius: 10,
                                  spreadRadius: 1.0,
                                ),
                              ],
                              border: Border.all(color: App_Theam.border_color),
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.network(
                              "https://cdn.pixabay.com/photo/2017/01/13/01/22/magnifying-glass-1976105_1280.png"),
                        )
                      ],
                    ),
                    Container(
                      width: 300,
                      color: App_Theam.White,
                      child: TextField(
                        autofocus: true,
                        cursorColor: App_Theam.Teal,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: App_Theam.Orange,
                              //width: 1.5,
                            ),
                          ),

                          //********Focus border like hover******************8
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          hintText: "Search your work need",
                          hintStyle: TextStyle(color: App_Theam.border_color),
                        ),
                      ),
                    ),
                  ],
                ),
              ],

            )
          ],
        ),
      ),
    );
  }
}
