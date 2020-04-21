import 'package:adahy/shared_ui/navigation_drawer.dart';
import 'package:flutter/material.dart';

class AddScarfi extends StatefulWidget {
  @override
  _AddScarfiState createState() => _AddScarfiState();
}

class _AddScarfiState extends State<AddScarfi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text(
          "إضافة أضحية",
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontFamily: "Changa",
          ),
        ),
      ),
      body: Center(
        child: TextFormField(
          decoration: InputDecoration(
              labelText: 'أضف وزن الأضحية'
          ),
        ),
      ),
    );
  }
}
