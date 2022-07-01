class Autogenerated {
  String? sentence;
  Character? character;

  Autogenerated({this.sentence, this.character});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    sentence = json['sentence'];
    character = json['character'] != null
        ? new Character.fromJson(json['character'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sentence'] = this.sentence;
    if (this.character != null) {
      data['character'] = this.character!.toJson();
    }
    return data;
  }
}

class Character {
  String? name;
  String? slug;
  House? house;

  Character({this.name, this.slug, this.house});

  Character.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    house = json['house'] != null ? new House.fromJson(json['house']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['slug'] = this.slug;
    if (this.house != null) {
      data['house'] = this.house!.toJson();
    }
    return data;
  }
}

class House {
  String? name;
  String? slug;

  House({this.name, this.slug});

  House.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['slug'] = this.slug;
    return data;
  }
}