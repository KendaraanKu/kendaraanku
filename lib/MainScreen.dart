import 'package:flutter/material.dart';
import 'package:kendaraanku/Bus_ku.dart';
import 'package:kendaraanku/Mobil_ku.dart';
import 'package:kendaraanku/Motor_ku.dart';
import 'package:kendaraanku/Myicons.dart';
import 'package:kendaraanku/Akun_ku.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {

    int _selectedIndex = 0;

  PageController _pageController = PageController();
  List<Widget> _screens = [MotorKu(), MobilKu(), BusKu(), AkunKu()];
  void _onPageChanged(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  void _itemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          
          BottomNavigationBarItem(
            icon: Icon(Myicons.biking),
            title: Text('Motor-Ku'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Myicons.car_side),
            title: Text('Mobil-Ku'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Myicons.bus),
            title: Text('Bus-Ku'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Akun'),
          ),
        ],
        
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _itemTapped,
      ),
    );
  }
}