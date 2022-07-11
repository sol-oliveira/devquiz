import 'package:flutter/material.dart';

class ScoreCardWidget extends StatelessWidget{
  const ScoreCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
        Expanded(
          flex: 3,
            child: Container(
            width: 80,
            height: 80,
            color: Colors.red,
          ),
        ),
        Expanded(
          flex: 1,
          child:  
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Column(
                children: [
                  Text("Vamos começar"),
                  Text("Complete os desafios e avance em conhecimento")
                ]
              ),
            ),
          ),       
      ]),
    );
  }
} 