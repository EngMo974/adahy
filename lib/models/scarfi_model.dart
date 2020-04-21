class Scarfi {
  int _id;
  String _img;
  double _wieght;
  String _store;
  String _desc;
  DateTime _dateTime;

  Scarfi.id(this._id, this._img, this._wieght, this._store, this._desc,
      this._dateTime);

  Scarfi(this._img, this._wieght, this._store, this._desc, this._dateTime);

  DateTime get dateTime => _dateTime;

  String get desc => _desc;

  String get store => _store;


  double get wieght => _wieght;

  String get img => _img;

  int get id => _id;

  set dateTime(DateTime value) {
    _dateTime = value;
  }

  set desc(String value) {
    _desc = value;
  }

  set store(String value) {
    _store = value;
  }

  set wieght(double value) {
    _wieght = value;
  }

  set img(String value) {
    _img = value;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['id'] = this._id;
    map['img'] = this._img;
    map['wieght'] = this._wieght;
    map['store'] = this._store;
    map['desc'] = this._desc;
    map['dateTime'] = this._dateTime;
  }

  Scarfi.getMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._img = map['img'];
    this._wieght = map['wieght'];
    this._store = map['store'];
    this._desc = map['desc'];
    this._dateTime = map['dateTime'];
  }
}
