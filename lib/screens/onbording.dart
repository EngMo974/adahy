import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:adahy/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBording extends StatefulWidget {
  @override
  _OnBordingState createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {
  List<PageModle> pages;
  ValueNotifier<int> _pageViewNotifier = ValueNotifier(0);

  void _addPage() {
    pages = new List<PageModle>();

    pages.add(
      PageModle('assets/images/bg1.jpeg'),
    );
    pages.add(
      PageModle('assets/images/bg2.jpeg'),
    );
  }

  @override
  Widget build(BuildContext context) {
    _addPage();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(pages[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              );
            },
            itemCount: pages.length,
            onPageChanged: (index) {
              _pageViewNotifier.value = index;
            },
          ),
          Transform.translate(
            offset: Offset(0, 175),
            child: Align(
              alignment: Alignment.center,
              child: _displayIndicator(pages.length),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24.0, left: 16, right: 16),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: RaisedButton(
                  color: Colors.red.shade800,
                  child: Text(
                    "دعنا نبدأ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          _updateSeen();
                          return HomeScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _displayIndicator(int length) {
    return PageViewIndicator(
      pageIndexNotifier: _pageViewNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.red,
        ),
      ),
    );
  }

  void _updateSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('seen', true);
  }
}

class PageModle {
  String _image;

  PageModle(this._image);

  String get image => _image;
}
