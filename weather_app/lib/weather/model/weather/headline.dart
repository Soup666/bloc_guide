// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Headline {
  final String text;
  final String category;
  Headline({
    required this.text,
    required this.category,
  });

  Headline copyWith({
    String? text,
    String? category,
  }) {
    return Headline(
      text: text ?? this.text,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'category': category,
    };
  }

  factory Headline.fromMap(Map<String, dynamic> map) {
    return Headline(
      text: map['Text'] as String,
      category: map['Category'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Headline.fromJson(String source) =>
      Headline.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Headline(text: $text, category: $category)';

  @override
  bool operator ==(covariant Headline other) {
    if (identical(this, other)) return true;

    return other.text == text && other.category == category;
  }

  @override
  int get hashCode => text.hashCode ^ category.hashCode;
}
