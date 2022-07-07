class StoicQuote {
  Data? data;

  StoicQuote({this.data});

  StoicQuote.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? author;
  String? quote;

  Data({this.author, this.quote});

  Data.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    quote = json['quote'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['author'] = this.author;
    data['quote'] = this.quote;
    return data;
  }
}
