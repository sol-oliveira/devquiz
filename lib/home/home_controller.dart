import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/awnser_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';

import '../core/app_images.dart';
import '../shared/models/question_model.dart';

class HomeController{
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser(){
    user = UserModel(
      name: "Sol Oliveira",
      photoUrl: "https://avatars.githubusercontent.com/u/71611273?v=4",
     );
  }

  void getQuizzes(){
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
  }
}