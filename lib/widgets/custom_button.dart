import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.title, this.background, this.textColor});
  final String? title;
  final Color? background, textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
          backgroundColor: background ?? const Color(0xFF4DB7F2),
          //  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
        ),
        onPressed: () {},
        child: Text(
          title ?? 'Send Money',
          style: AppStyles.styleSemiBold18
              .copyWith(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
