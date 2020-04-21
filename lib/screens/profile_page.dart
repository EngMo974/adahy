import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adahy/shared_ui/navigation_drawer.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الملف الشخصي',
          textDirection: TextDirection.rtl,
          style: (TextStyle(
            fontFamily: "Changa",
          )),
        ),
      ),
      drawer: NavigationDrawer(),
      body: Column(
        children: <Widget>[
          Center(
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .30,
                  color: Colors.cyan.shade300,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage(
                              'assets/images/prof.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 3,
                              color: Colors.redAccent,
                              style: BorderStyle.solid),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "محمد خليفة",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Rakkas",
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16, top: 72),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "asdasdm94@gmail.com",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Changa",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "0597915437",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Changa",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "المشتريات",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Changa",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "صندوق الرسائل",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Changa",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 16, top: 72),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.email,
                            color: Colors.lightBlue,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.phone_android,
                            color: Colors.lightBlue,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.lightBlue,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.message,
                            color: Colors.lightBlue,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 24),
            child: SizedBox(
              width: double.infinity,
              height: 48,
              child: Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.grey.shade300,
                  child: Text(
                    "تعديل الملف الشخصي",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Changa",
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
