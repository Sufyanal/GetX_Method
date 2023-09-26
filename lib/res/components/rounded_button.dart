import 'package:flutter/material.dart';
import 'package:getx/res/colors/app_colors.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    this.loading = false,
    this.btncolor = AppColors.blackColor,
    this.textcolor = AppColors.whiteColor,
    required this.title,
    required this.onPressed,
    this.width = 90,
    this.height = 80,
  });

  final bool loading;
  final double width, height;
  final String title;
  final VoidCallback onPressed;
  final Color textcolor, btncolor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: btncolor, borderRadius: BorderRadius.circular(30)),
        child: loading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: Text(
                  title,
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ),
      ),
    );
  }
}
