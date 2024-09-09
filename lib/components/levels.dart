import 'package:flutter/material.dart';
import 'package:task3/components/bubbles.dart';

class LevelsContainer extends StatelessWidget {
  final String level;
  final Color backgroundColor;
  final IconData starIcon;
  final Color colorStar1;
  final Color colorStar2;
  final Color colorStar3;

  const LevelsContainer(
      this.level,
      this.backgroundColor,
      this.starIcon,
      this.colorStar1,
      this.colorStar2,
      this.colorStar3,
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            ClipPath(
              clipper: PentagonClipper(),
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: backgroundColor,
                ),
                child: Stack(
                  children: [
                    CustomContainer(45, null, null, null, 15, 15, Colors.white24),
                    CustomContainer(60, null, 5, null, 40, 40, Colors.white24),
                    CustomContainer(65, null, 10, null, 30, 30, backgroundColor),
                    CustomContainer(48, null, 30, null, 8, 8, Colors.white24),
                    CustomContainer(20, null, null, 5, 40, 40, Colors.white24),
                    CustomContainer(15, null, null, 43, 15, 15, Colors.white24),
                    CustomContainer(null, -3, null, 18, 15, 15, Colors.white24),
                    CustomContainer(null, 12, null, 32, 8, 8, Colors.white24),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 10),
                          const Text(
                            "Level",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            level,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -20,
              child: Icon(
                starIcon,
                color: colorStar1,
                size: 30,
              ),
            ),
            Positioned(
              top: -20,
              left: 80,
              child: Icon(
                starIcon,
                color: colorStar2,
                size: 30,
              ),
            ),
            Positioned(
              top: -40,
              left: 40,
              child: Icon(
                starIcon,
                color: colorStar3,
                size: 30,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PentagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    Path path = Path();
    double centerX = width / 2;

    path.moveTo(centerX, 0);
    path.lineTo(width, height * 0.38);
    path.lineTo(width * 0.8, height);
    path.lineTo(width * 0.2, height);
    path.lineTo(0, height * 0.38);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

