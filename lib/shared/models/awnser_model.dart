// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AwnserModel {
  final String title;
  final bool isRight;

  AwnserModel({
    required this.title,
    this.isRight = false,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'isRight': isRight,
    };
  }

  factory AwnserModel.fromMap(Map<String, dynamic> map) {
    return AwnserModel(
      title: map['title'] as String,
      isRight: map['isRight'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory AwnserModel.fromJson(String source) => AwnserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
