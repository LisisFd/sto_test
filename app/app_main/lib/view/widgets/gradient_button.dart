import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  const GradientButton({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [0.0, 1.0],
          colors: [
            Color(0xFF8C8CB2),
            Color(0xFF474782),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ElevatedButton.icon(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            elevation: MaterialStateProperty.all(0),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: onPressed,
          icon: const ClipOval(
            child: ColoredBox(
              color: Colors.white,
              child: Icon(
                Icons.arrow_back_ios_sharp,
                color: Color(0xFF8C8CB2),
              ),
            ),
          ),
          label: Text(
            title,
            style: textTheme.labelMedium?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
