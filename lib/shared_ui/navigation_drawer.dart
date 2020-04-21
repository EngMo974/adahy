import 'package:flutter/material.dart';
import 'package:adahy/models/nav_menu.dart';
import 'package:adahy/screens/home_screen.dart';
import 'package:adahy/screens/cart_page.dart';
import 'package:adahy/screens/profile_page.dart';
import 'package:adahy/screens/add_Scarfi.dart';


class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  List<NavMenuItem> navigationMenu = [
    NavMenuItem('استعراض', ()=> HomeScreen()),
    NavMenuItem('الملف الشخصي',()=> Profile()),
    NavMenuItem('المشتريات',()=>Cart()),
    NavMenuItem('إضافة أضحية',()=>AddScarfi()),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(top: 72, left: 24),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: ListTile(
                title: Text(
                  navigationMenu[index].title,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 20,
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.grey.shade500,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return navigationMenu[index].dest();
                  }));
                },
              ),
            );
          },
          itemCount: navigationMenu.length,
        ),
      ),
    );
  }
}
