import 'package:flutter/foundation.dart';

import 'package:DevQuiz/home/home_repository.dart';
import 'package:DevQuiz/home/home_state.dart';

import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';

class HomeController{
 final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

   final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;    
    user = await repository.getUser();
    state = HomeState.success;   
  }

  void getQuizzes() async {
    state = HomeState.loading; 
    quizzes = await repository.getQuizzes();
    if(quizzes != null){
       state = HomeState.success;
    }
  }
}