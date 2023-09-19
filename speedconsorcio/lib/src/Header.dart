import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(20, 255, 255, 255),
      height: 120.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(
            width: 120.0,
          ),
          ClipRRect(
            child: Image.asset(
              'assets/logo/logo-speed.png',
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(300.0),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            '',
            style: GoogleFonts.nunito(
                color: const Color.fromARGB(255, 59, 59, 59), fontSize: 18.0),
          ),

          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     HeaderNav(
          //       selected: true,
          //       text: 'Menu A',
          //     ),
          //     SizedBox(
          //       width: 40.0,
          //     ),
          //     HeaderNav(
          //       selected: false,
          //       text: 'Menu B',
          //     ),
          //     SizedBox(
          //       width: 40.0,
          //     ),
          //     HeaderNav(
          //       selected: false,
          //       text: 'Menu C',
          //     ),
          //     SizedBox(
          //       width: 40.0,
          //     ),
          //     HeaderNav(
          //       selected: false,
          //       text: 'Menu D',
          //     ),
          // ],
          // ),
          SizedBox(
            width: 250.0,
          ),
          // Row(
          //   children: [
          //     Text(
          //       'Sign Up',
          //       style: GoogleFonts.nunito(
          //         fontSize: 13.0,
          //         color: Colors.white,
          //       ),
          //     ),
          //     SizedBox(
          //       width: 10.0,
          //     ),
          //     Container(
          //       height: 20.0,
          //       width: 1.0,
          //       color: Colors.white,
          //     ),
          //     SizedBox(
          //       width: 10.0,
          //     ),
          //     Text(
          //       'Log In',
          //       style: GoogleFonts.nunito(
          //         fontSize: 13.0,
          //         color: Colors.white,
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

class HeaderNav extends StatefulWidget {
  final String text;
  final bool selected;

  HeaderNav({
    required this.selected,
    required this.text,
  });
  @override
  _HeaderNavState createState() => _HeaderNavState();
}

class _HeaderNavState extends State<HeaderNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: GoogleFonts.nunito(
            fontSize: 13.0,
            color: Colors.white,
          ),
        ),
        widget.selected
            ? SizedBox(
                height: 5.0,
              )
            : SizedBox(),
        widget.selected
            ? CircleAvatar(
                backgroundColor: Colors.white,
                radius: 2.0,
              )
            : SizedBox(),
      ],
    );
  }
}
