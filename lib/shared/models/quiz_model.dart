// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:DevQuiz/shared/models/awnser_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';

enum Level {facil, medio, dificil, perito}

extension LevelStringExt on String {
  Level get parse => {
        "facil": Level.facil,
        "medio": Level.medio,
        "dificil": Level.dificil,
        "perito": Level.perito
      }[this]!;
}

extension LevelExt on Level {
  String get parse => {
        Level.facil: "facil",
        Level.medio: "medio",
        Level.dificil: "dificil",
        Level.perito: "perito",
      }[this]!;
}

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionAnswsered;
  final String image;
  final Level level;

  QuizModel({
    required this.title,
    required this.questions,
    this.questionAnswsered = 0,
    required this.image,
    required this.level,
    List<AwnserModel>? awnsers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'questions': questions.map((x) => x.toMap()).toList(),
      'questionAnswsered': questionAnswsered,
      'image': image,
      'level': level.parse,
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      title: map['title'] as String,
      questions: List<QuestionModel>.from((map['questions'] as List<int>).map<QuestionModel>((x) => QuestionModel.fromMap(x as Map<String,dynamic>),),),
      questionAnswsered: map['questionAnswsered'] as int,
      image: map['image'] as String,
      level: map['level'].toString().parse,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) => QuizModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
