import 'package:DevQuiz/shared/models/awnser_model.dart';
import 'package:flutter/material.dart';

import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';



class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final ValueChanged<bool> onSelected;

  const QuizWidget({
    Key? key, 
    required this.question, 
    required this.onSelected
  }) : super(key: key);

  @override
  State<QuizWidget> createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;

  AwnserModel awnser(int index) => widget.question.awnsers[index];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
         children: [
        SizedBox(height: 64),
        Text(
          widget.question.title, 
          style: AppTextStyles.heading
        ),
        SizedBox(
          height: 24,
        ),
    for (var i = 0; i < widget.question.awnsers.length; i++)
        AwnserWidget(
          awnser : awnser(i),
          isSelected: indexSelected == i,
          onTap: (value){
            indexSelected = i ;            
            setState((){ }); 
            Future.delayed(
              Duration(seconds: 1))
              .then((_) => widget.onSelected(value));
          }, 
          disabled: indexSelected != -1,         
        ),
        ],
      ), 
    );    
  }
}