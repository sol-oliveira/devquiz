// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:DevQuiz/shared/models/awnser_model.dart';

class QuestionModel {
  final String title;
  final List<AwnserModel> awnsers;

  QuestionModel({
    required this.title,
    required this.awnsers,
  }): assert (
    awnsers.length == 4,
  );


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'awnsers': awnsers.map((x) => x.toMap()).toList(),
    };
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      title: map['title'] as String,
      awnsers: List<AwnserModel>.from((map['awnsers'] as List<int>).map<AwnserModel>((x) => AwnserModel.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionModel.fromJson(String source) => QuestionModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
