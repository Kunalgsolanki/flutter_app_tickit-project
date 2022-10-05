import 'package:app_kgs/pages/home_page.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class bottombar extends StatefulWidget {
  const bottombar({super.key});

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int _selectedIndex = 0;
  static final List<Widget> _widget = <Widget>[
    HomePage(),
    const Text("Search"),
    const Text("Tickits"),
    const Text(" Profile"),
  ];
  void _onitemTaped(int index) {
    // creating funtion for taping bottom slect theb list item
    setState(() {
      _selectedIndex = index;
    });
    //  print('$_selectedIndex');
    //  print(_selectedIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     
      body: Center(
        child: _widget[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onitemTaped,
          // call the function in ontap this funton work if we tap the bottom icon it show the list arry  it is controll the list arry

          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.cyan,
          unselectedItemColor: const Color(0xFF526480),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  FluentSystemIcons.ic_fluent_home_regular,
                  color: Colors.blueGrey,
                ),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  FluentSystemIcons.ic_fluent_search_regular,
                  
                  color: Colors.blueGrey,
                ),

                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  FluentSystemIcons.ic_fluent_ticket_regular,
                  color: Colors.blueGrey,
                ),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "Tickits"),
            BottomNavigationBarItem(
                icon: Icon(
                  FluentSystemIcons.ic_fluent_person_accounts_filled,
                  color: Colors.blueGrey,
                ),

                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
                label: "Profile"),
          ]),
    );
  }
}
