class SearchCityModel {
  String? name;
  LocalNames? localNames;
  double? lat;
  double? lon;
  String? country;
  String? state;

  SearchCityModel(
      {this.name,
        this.localNames,
        this.lat,
        this.lon,
        this.country,
        this.state});

  SearchCityModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    localNames = json['local_names'] != null
        ? new LocalNames.fromJson(json['local_names'])
        : null;
    lat = json['lat'];
    lon = json['lon'];
    country = json['country'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.localNames != null) {
      data['local_names'] = this.localNames!.toJson();
    }
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['country'] = this.country;
    data['state'] = this.state;
    return data;
  }
}

class LocalNames {
  String? ja;
  String? ko;
  String? no;
  String? ca;
  String? sv;
  String? my;
  String? de;
  String? pl;
  String? ru;
  String? en;
  String? th;
  String? fr;
  String? lt;

  LocalNames(
      {this.ja,
        this.ko,
        this.no,
        this.ca,
        this.sv,
        this.my,
        this.de,
        this.pl,
        this.ru,
        this.en,
        this.th,
        this.fr,
        this.lt});

  LocalNames.fromJson(Map<String, dynamic> json) {
    ja = json['ja'];
    ko = json['ko'];
    no = json['no'];
    ca = json['ca'];
    sv = json['sv'];
    my = json['my'];
    de = json['de'];
    pl = json['pl'];
    ru = json['ru'];
    en = json['en'];
    th = json['th'];
    fr = json['fr'];
    lt = json['lt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ja'] = this.ja;
    data['ko'] = this.ko;
    data['no'] = this.no;
    data['ca'] = this.ca;
    data['sv'] = this.sv;
    data['my'] = this.my;
    data['de'] = this.de;
    data['pl'] = this.pl;
    data['ru'] = this.ru;
    data['en'] = this.en;
    data['th'] = this.th;
    data['fr'] = this.fr;
    data['lt'] = this.lt;
    return data;
  }
}
