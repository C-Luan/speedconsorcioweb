import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final double top;
  final double left;
  final double diameter;
  final String image;

  ProfileImage({
    required this.top,
    required this.left,
    required this.diameter,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: SizedBox(
        height: diameter,
        width: diameter,
        child: ClipRRect(
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(300.0),
        ),
      ),
    );
  }
}
