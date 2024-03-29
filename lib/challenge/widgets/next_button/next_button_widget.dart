
import 'package:flutter/material.dart';
import 'package:DevQuiz/core/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final VoidCallback ontap;
  
 NextButtonWidget({
    Key? key, 
    required this.label, 
    required this.backgroundColor, 
    required this.fontColor,
    required this.borderColor,
    required this.ontap,
    });

    NextButtonWidget.green({required String label, required VoidCallback ontap})
      : this.backgroundColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.label = label,
        this.borderColor = Colors.green,
        this.ontap = ontap;

      NextButtonWidget.purple({required String label, required VoidCallback ontap})
      : this.backgroundColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.label = label,
        this.borderColor = Colors.purple,
        this.ontap = ontap;

      NextButtonWidget.white({required String label, required VoidCallback ontap})
      : this.backgroundColor= AppColors.white,
        this.fontColor = AppColors.grey,
        this.label = label,
        this.borderColor = AppColors.border,
        this.ontap = ontap;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
           backgroundColor,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
          ),
          side: MaterialStateProperty.all(BorderSide(
            color: borderColor
          ),
          ),        
        ),
        onPressed: ontap,
        child: Text(
        label,
        style: GoogleFonts.notoSans(
          fontWeight: FontWeight.w600,
          fontSize: 15,
          color: fontColor,
        ),
       ),
       ),
    );
  }
}