class RandomYearModel {
  final String date;
  final String text;

  const RandomYearModel({
    required this.date,
    required this.text,
  });

  factory RandomYearModel.fromJson(Map<String, dynamic> json) {
    return RandomYearModel(
      date: json['date'],
      text: json['text'],
    );
  }
}
