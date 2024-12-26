import 'package:demo_create/custom_widgets/text_theme.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String title;
  final Widget  image;
  final VoidCallback onNotificationTap;

  const CustomHeader({
    Key? key,
    required this.title,
    required this.onNotificationTap, required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.purpleAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0, 5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/appbar_background.png",
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.3),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50,right: 20,left: 20),
            child: Row(
              children: [
                Text(
                  title,
                  style: AppTextTheme.bold.copyWith(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon:image,
                  onPressed: onNotificationTap,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
