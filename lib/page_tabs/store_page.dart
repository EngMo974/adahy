import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
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
    images.add(Images('assets/images/3.jpg',
        'مزارع حلال رفح نسعد بخدمتكم في أي مناسبة', 'منذ 15 د', '100 كجم'));
    images.add(Images('assets/images/3.jpg',
        'مزارع حلال رفح نسعد بخدمتكم في أي مناسبة', 'منذ 15 د', '100 كجم'));
  }

  @override
  Widget build(BuildContext context) {
    _addScarfi();
    return ListView.builder(itemBuilder: (context, index) {
      return Card(
        child: drawRow(),
      );
    },itemCount: images.length);
  }


  Widget drawRow() {
    _addScarfi();
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