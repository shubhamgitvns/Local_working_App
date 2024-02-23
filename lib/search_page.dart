import 'package:flutter/material.dart';
import 'package:githubtesting/App_Theam.dart';

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
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.white,
    ),
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
            // _selectedIndex = index;
            _previousIndex = _selectedIndex;
            // if (index == 3) {
            //   _showBottomSheet = true;
            //   _selectedIndex = _previousIndex;
            // } else {
            //   _selectedIndex = index;
            // }
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
                      color: _selectedIndex == 0 ? Colors.black : Colors.grey,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 10,
                        color: _selectedIndex == 0 ? Colors.black : Colors.grey,
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
                    Icons.wallet,
                    color: _selectedIndex == 1 ? Colors.black : Colors.grey,
                  ),
                  Text(
                    "Collection",
                    style: TextStyle(
                      fontSize: 10,
                      color: _selectedIndex == 1 ? Colors.black : Colors.grey,
                    ),
                  ),
                ],
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
                    color: _selectedIndex == 0 ? Colors.black : Colors.grey,
                  ),
                  Text(
                    "My Profile",
                    style: TextStyle(
                      fontSize: 10,
                      color: _selectedIndex == 2 ? Colors.black : Colors.grey,
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
