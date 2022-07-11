import 'package:flutter/material.dart';

import '../../../core/app_gradients.dart';
import '../../../core/app_text_styles.dart';
import '../score_card/score_card_widget.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget() 
  : super(
    preferredSize: Size.fromHeight(250), 
    child: Container(    
        height: 250,  
        decoration: BoxDecoration(
          gradient: AppGradients.linear
        ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: 'Olá, ', 
                    style: AppTextStyles.title,
                    children: [
                      TextSpan(
                        text: "Sol Oliveira",
                        style: AppTextStyles.titleBold,
                      )
                    ]
                  )
                ),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://avatars.githubusercontent.com/u/71611273?v=4"
                        )
                        )
                    )
                )
              ],
              ),
              ScoreCardWidget()
          ],
        ),
      ),
    ),
   ); 
}
