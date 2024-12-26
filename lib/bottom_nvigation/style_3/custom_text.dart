import 'package:demo_create/custom_widgets/text_theme.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final Widget icon;
  final double size;
  final EdgeInsets  padding;
  final VoidCallback onNotificationTap;
  const CustomText({super.key, required this.title,required this.onNotificationTap, required this.icon, required this.padding, required this.size});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
            "assets/images/text_background.png",
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.darken,
          ),
        ),
        Positioned(
          child: Padding(
              padding: padding,
              child: Row(
                children: [
                  Text(
                    title,
                    style: AppTextTheme.bold.copyWith(
                      color: Colors.pink,
                      fontSize: size,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon:icon,
                    onPressed: onNotificationTap,
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
