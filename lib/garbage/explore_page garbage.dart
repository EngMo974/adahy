import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  List<Images> images;

  void _addImage() {
    images = new List<Images>();

    //  Images(this._images, this._key, this._store, this._address, this._phone,
    //      this._wight, this._partner, this._partner_no);

    images.add(Images(
        'assets/images/1.jpg',
        'ac',
        'مزرعة أبو جزر',
        'رفح تل السلطان',
        '059xxxxx',
        '550 Kg',
        '{أحمد محمد - علي طه - محمد خليل}',
        '3'));
    images.add(Images('assets/images/2.jpg', 'ad', 'مزرعة العبسي', 'رفح البلد',
        '059xxxxx', '60 Kg', '{}', '0'));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    _addImage();

    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(
        images.length,
        (index) {
          return Scaffold(
            body: GestureDetector(
              child: Hero(
                  tag: images[index].key,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(images[index].images),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return Scaffold(
                        body: GestureDetector(
                          child: Center(
                            child: Hero(
                              tag: images[index].key,
                              child: Scaffold(
                                body: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(top: 5),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: ExactAssetImage(
                                                images[index].images),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Scaffold(
                                        body: Column(
                                          children: <Widget>[
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.topRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 15),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: <Widget>[
                                                      Text(
                                                        images[index]._address,
                                                        style: textStyle(),
                                                        textAlign:
                                                            TextAlign.right,
                                                        textDirection:
                                                            TextDirection.rtl,
                                                      ),
                                                      Text(
                                                        "العنوان:",
                                                        style: textStyle(),
                                                        textAlign:
                                                            TextAlign.right,
                                                        textDirection:
                                                            TextDirection.rtl,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.topRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 15),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: <Widget>[
                                                      Text(
                                                        images[index]._store,
                                                        style: textStyle(),
                                                        textAlign:
                                                            TextAlign.right,
                                                        textDirection:
                                                            TextDirection.rtl,
                                                      ),
                                                      Text(
                                                        "المتجر:",
                                                        style: textStyle(),
                                                        textAlign:
                                                            TextAlign.right,
                                                        textDirection:
                                                            TextDirection.rtl,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.topRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 15),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: <Widget>[
                                                      Text(
                                                        images[index]._phone,
                                                        style: textStyle(),
                                                        textAlign:
                                                            TextAlign.right,
                                                        textDirection:
                                                            TextDirection.rtl,
                                                      ),
                                                      Text(
                                                        "رقم التواصل:",
                                                        style: textStyle(),
                                                        textAlign:
                                                            TextAlign.right,
                                                        textDirection:
                                                            TextDirection.rtl,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.topRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 15),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: <Widget>[
                                                      Text(
                                                        images[index]._wight,
                                                        style: textStyle(),
                                                        textAlign:
                                                            TextAlign.right,
                                                        textDirection:
                                                            TextDirection.rtl,
                                                      ),
                                                      Text(
                                                        "الوزن:",
                                                        style: textStyle(),
                                                        textAlign:
                                                            TextAlign.right,
                                                        textDirection:
                                                            TextDirection.rtl,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.topRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 15),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: <Widget>[
                                                      Text(
                                                        images[index]._partner,
                                                        style: textStyle(),
                                                        textAlign:
                                                            TextAlign.right,
                                                        textDirection:
                                                            TextDirection.rtl,
                                                      ),
                                                      Text(
                                                        "الشركاء:",
                                                        style: textStyle(),
                                                        textAlign:
                                                            TextAlign.right,
                                                        textDirection:
                                                            TextDirection.rtl,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.topRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 15),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: <Widget>[
                                                      Text(
                                                        images[index]
                                                            ._partner_no,
                                                        style: textStyle(),
                                                        textAlign:
                                                            TextAlign.right,
                                                        textDirection:
                                                            TextDirection.rtl,
                                                      ),
                                                      Text(
                                                        "عدد الشركاء:",
                                                        style: textStyle(),
                                                        textAlign:
                                                            TextAlign.right,
                                                        textDirection:
                                                            TextDirection.rtl,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 8.0, left: 16, right: 16),
                                          child: SizedBox(
                                            width: double.infinity,
                                            height: 48,
                                            child: RaisedButton(
                                              color: Colors.red.shade800,
                                              child: Text(
                                                "اذهب إلى المتجر",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24,
                                                    letterSpacing: 1,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) {},
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  // ignore: missing_return
  TextStyle textStyle() {
    TextStyle textStyle = new TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
    );
    return textStyle;
  }
}

class Images {
  String _images;
  String _key;
  String _store;
  String _address;
  String _phone;
  String _wight;
  String _partner;
  String _partner_no;

  Images(this._images, this._key, this._store, this._address, this._phone,
      this._wight, this._partner, this._partner_no);

  String get partner_no => _partner_no;

  String get partner => _partner;

  String get wight => _wight;

  String get phone => _phone;

  String get address => _address;

  String get store => _store;

  String get key => _key;

  String get images => _images;
}
