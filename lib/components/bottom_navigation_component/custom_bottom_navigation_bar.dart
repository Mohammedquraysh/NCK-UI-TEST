
import 'package:flutter/material.dart';
import 'package:nck_ui_test/screens/home_page.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();


}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {


  late Widget _currentPage;
  late int _currentIndex;
  int _selectedIndex = 0;


  final List<Widget> _bottomNavScreens = <Widget>[
    const HomePage(),
  ];


  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _currentPage = const HomePage();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _currentPage = _bottomNavScreens[index];
    });
  }



  @override
  Widget build(BuildContext context) {

    return  BottomNavigationBar(
      // onTap: ,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      // onTap: ,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon:  Icon(Icons.home),
          // icon: Icon(Icons.home),
          label: 'Home',

        ),
        BottomNavigationBarItem(
          icon:  Icon(Icons.card_giftcard_outlined),
          label: 'Card',
        ),
        BottomNavigationBarItem(
          icon:  Icon(Icons.local_activity_sharp),
          label: 'Activity',
        ),
        BottomNavigationBarItem(
          icon:  Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap:(index) {
        _onItemTapped(index);
      },
      // onTap: _onItemTapped,

    );
  }
}
