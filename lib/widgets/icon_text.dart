import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../theme/app_colors.dart';

class IconText extends StatelessWidget {
  final String iconAsset;
  final String text;

  const IconText({super.key, required this.iconAsset, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          iconAsset,
          height: 16,
          width: 16,
          color: AppColors.buttoncolor,
        ),
        const SizedBox(width: 6),
        Text(
          text,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: AppColors.buttoncolor,
          ),
        ),
      ],
    );
  }
}
