import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTile extends StatelessWidget {
  final double top;
  final double left;
  final String title;
  final String subTitle;
  final double factor;
  final Icon icon;
  ProfileTile(
      {required this.left,
      required this.subTitle,
      required this.title,
      required this.top,
      required this.factor,
      required this.icon});
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 500),
      top: top,
      left: left,
      child: Container(
        padding: EdgeInsets.all(8.0 * factor),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(71, 0, 0, 0),
              offset: Offset(0.0, 5.0 * factor),
              blurRadius: 5.0 * factor,
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
                radius: 12.0 * factor,
                backgroundColor: Color.fromARGB(160, 53, 53, 53),
                child: icon),
            SizedBox(
              width: 5.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 9.0 * factor,
                    color: Colors.black,
                  ),
                ),
                Text(
                  subTitle,
                  style: GoogleFonts.nunito(
                    fontSize: 8.0 * factor,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
