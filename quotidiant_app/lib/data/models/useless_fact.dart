// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

import 'dart:convert';

UselessFact uselessFactFromMap(String str) =>
    UselessFact.fromMap(json.decode(str));

String uselessFactToMap(UselessFact data) => json.encode(data.toMap());

class UselessFact {
  UselessFact({
    this.id,
    this.text,
    this.source,
    this.sourceUrl,
    this.language,
    this.permalink,
  });

  String? id;
  String? text;
  String? source;
  String? sourceUrl;
  String? language;
  String? permalink;

  UselessFact copyWith({
    String? id,
    String? text,
    String? source,
    String? sourceUrl,
    String? language,
    String? permalink,
  }) =>
      UselessFact(
        id: id ?? this.id,
        text: text ?? this.text,
        source: source ?? this.source,
        sourceUrl: sourceUrl ?? this.sourceUrl,
        language: language ?? this.language,
        permalink: permalink ?? this.permalink,
      );

  factory UselessFact.fromMap(Map<String, dynamic> json) => UselessFact(
        id: json["id"] == null ? null : json["id"],
        text: json["text"] == null ? null : json["text"],
        source: json["source"] == null ? null : json["source"],
        sourceUrl: json["source_url"] == null ? null : json["source_url"],
        language: json["language"] == null ? null : json["language"],
        permalink: json["permalink"] == null ? null : json["permalink"],
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "text": text == null ? null : text,
        "source": source == null ? null : source,
        "source_url": sourceUrl == null ? null : sourceUrl,
        "language": language == null ? null : language,
        "permalink": permalink == null ? null : permalink,
      };
}
