import 'package:flutter/foundation.dart';

import 'package:DevQuiz/shared/models/awnser_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';

import 'package:DevQuiz/core/app_images.dart';

import 'package:DevQuiz/home/home_state.dart';
class HomeController{
 final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));    
    user = UserModel(
      name: "Sol Oliveira",
      photoUrl: "https://avatars.githubusercontent.com/u/71611273?v=4",
     );
     if(user != null){
      state = HomeState.success;
     }
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(        
        title: "NLW 5 Flutter",
        image: AppImages.blocks,
        level: Level.facil,
        questions: [
          QuestionModel(
            title: "Está curtindo o Flutter?",
            awnsers: [           
              AwnserModel(title: 'Amando Flutter'),
              AwnserModel(title: 'Muito top'),
              AwnserModel(title: 'Show de bola'),
              AwnserModel(title: 'Estou curtindo', isRight: true),
            ])
        ],
      )
    ];

    if(quizzes != null){
       state = HomeState.success;
    }
  }
}