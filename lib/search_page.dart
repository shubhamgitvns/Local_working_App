import 'package:flutter/material.dart';
import 'package:githubtesting/App_Theam.dart';
import 'package:githubtesting/Client_Home_Page.dart';
import 'package:githubtesting/Worker_home_page.dart';

class BottomCollectionBoy extends StatefulWidget {
  int index = 0;
  BottomCollectionBoy({Key? key, required this.index}) : super(key: key);

  @override
  State<BottomCollectionBoy> createState() => _BottomCollectionBoyState();
}

class _BottomCollectionBoyState extends State<BottomCollectionBoy> {
  int _selectedIndex = 0;
  bool _showBottomSheet = false;
  int _previousIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const Client_Home_Page()
  ];

  final bool _isBottomSheetOpen = false;

  @override
  void initState() {
    _selectedIndex = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.maincolor,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        selectedLabelStyle: const TextStyle(fontSize: 2),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            _previousIndex = _selectedIndex;

          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            // backgroundColor: AppColors.buttoncolor,
            icon: Container(
              height: 60,
              width: 60,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: _selectedIndex == 0 ? App_Theam.Orange : Colors.grey,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 10,
                        color: _selectedIndex == 0 ? Colors.orange : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: _selectedIndex == 1 ? App_Theam.Orange : Colors.grey,
                  ),
                  Text(
                    "My Profile",
                    style: TextStyle(
                      fontSize: 10,
                      color: _selectedIndex == 1 ? App_Theam.Orange : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          ),

        ],
      ),
      appBar: AppBar(
        backgroundColor: App_Theam.Teal,
      ),
      body: Stack(
        children: [
          _widgetOptions.elementAt(_selectedIndex),
        ],
      ),
      // bottomSheet: _showBottomSheet ? _buildBottomSheet() : null,
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  color: App_Theam.White,
                  child: TextField(
                    autofocus: true,
                    cursorColor: App_Theam.Teal,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: App_Theam.Orange,
                          //width: 1.5,
                        ),
                      ),
        
                      //********Focus border like hover******************8
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Search your work need",
                      hintStyle: TextStyle(color: App_Theam.border_color),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            color: App_Theam.White,
                            border: Border.all(color: App_Theam.Teal),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.transparent,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 10,
                                spreadRadius: 1.0,
                              ),
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 10,
                                spreadRadius: 1.0,
                              ),
                            ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Vinayak",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: App_Theam.Black),),
                                Text("Plumber",style: TextStyle(fontWeight: FontWeight.bold,color: App_Theam.border_color),),
                              ],
                            ),
                            Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: App_Theam.Orange,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: App_Theam.Teal),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.transparent,
                                        offset: Offset(2.0, 2.0),
                                        blurRadius: 5,
        
                                      ),
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(-2.0, -2.0),
                                        blurRadius: 5,
        
                                      ),
                                    ]
                                ),
        
                                child: const Center(child: Text("Contact"))),
                          ],
                        ),
                      ),
                    ),
        
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            color: App_Theam.White,
                            border: Border.all(color: App_Theam.Teal),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.transparent,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 10,
                                spreadRadius: 1.0,
                              ),
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 10,
                                spreadRadius: 1.0,
                              ),
                            ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Vinayak",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: App_Theam.Black),),
                                Text("Plumber",style: TextStyle(fontWeight: FontWeight.bold,color: App_Theam.border_color),),
                              ],
                            ),
                            Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: App_Theam.Orange,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: App_Theam.Teal),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.transparent,
                                        offset: Offset(2.0, 2.0),
                                        blurRadius: 5,
        
                                      ),
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(-2.0, -2.0),
                                        blurRadius: 5,
        
                                      ),
                                    ]
                                ),
        
                                child: const Center(child: Text("Contact"))),
                          ],
                        ),
                      ),
                    ),
        
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            color: App_Theam.White,
                            border: Border.all(color: App_Theam.Teal),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.transparent,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 10,
                                spreadRadius: 1.0,
                              ),
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 10,
                                spreadRadius: 1.0,
                              ),
                            ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Vinayak",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: App_Theam.Black),),
                                Text("Plumber",style: TextStyle(fontWeight: FontWeight.bold,color: App_Theam.border_color),),
                              ],
                            ),
                            InkWell(
                              child: Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: App_Theam.Orange,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: App_Theam.Teal),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.transparent,
                                          offset: Offset(2.0, 2.0),
                                          blurRadius: 5,
        
                                        ),
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(-2.0, -2.0),
                                          blurRadius: 5,
        
                                        ),
                                      ]
                                  ),
        
                                  child: const Center(child: Text("Contact"))),
                              onTap: () async{
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>  const Worker_Home_Page()));
        
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


