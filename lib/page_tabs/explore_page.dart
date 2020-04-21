import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  List<Images> images;

  void _addScarfi() {
    images = new List<Images>();

    images.add(Images('assets/images/7.jpg',
        'مزارع عبد العال لتجارة الحلال والأضاحي', 'منذ 5 د', '500 كجم'));
    images.add(Images('assets/images/1.jpg',
        'مزرعة أبو جزر للأضاحي والمناسبات السعيدة', 'منذ 10 د', '650 كجم'));
    images.add(Images('assets/images/3.jpg',
        'مزارع حلال رفح نسعد بخدمتكم في أي مناسبة', 'منذ 15 د', '100 كجم'));
    images.add(Images('assets/images/3.jpg',
        'مزارع حلال رفح نسعد بخدمتكم في أي مناسبة', 'منذ 15 د', '100 كجم'));
  }

  @override
  Widget build(BuildContext context) {
    _addScarfi();
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[drawHeader(), drawContent()],
      ),
    );
  }

  Widget drawHeader() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: ExactAssetImage('assets/images/7.jpg'), fit: BoxFit.fill),
      ),
    );
  }

  Widget drawContent() {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16, top: 16),
            child: drawSectionTitle("الأكثر شيوعاً"),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Card(
              child: Column(
                children: <Widget>[
                  drawRow(),
                  drawDivide(),
                  drawRow(),
                  drawDivide(),
                  drawRow(),
                  drawDivide(),
                  drawRow(),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 16, bottom: 8),
                    child: drawSectionTitle("آخر التحديثات")),
                drawRecentCard(),
                drawRecentCard(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget drawSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.grey.shade700,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    );
  }

  Widget drawRow() {
    int index = 0;
    while (index <= images.length) {
      return Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              child: Image(
                image: ExactAssetImage(images[index].image),
                fit: BoxFit.cover,
              ),
              width: 108,
              height: 108,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      images[index].desc,
                      maxLines: 2,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Icon(Icons.timer),
                            Text(images[index].time)
                          ],
                        ),
                        Text(images[index].weight),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
    index++;
  }

  Widget drawDivide() {
    return Container(
      width: double.infinity,
      height: 1,
      color: Colors.grey.shade100,
    );
  }

  Widget drawRecentCard() {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/images/1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .4,
          ),
          Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'مزارع العافانات نسعد بخدمتكم طول الوقت',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              )),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "10 دقائق",textDirection: TextDirection.rtl,
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.timer,
                  color: Colors.grey,
                  size: 24,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Images {
  String _image;
  String _desc;
  String _time;
  String _weight;

  Images(this._image, this._desc, this._time, this._weight);

  String get weight => _weight;

  String get time => _time;

  String get desc => _desc;

  String get image => _image;
}
