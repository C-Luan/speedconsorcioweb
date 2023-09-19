import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../url_launcher.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: MediaQuery.of(context).size.width,
      color: Color.fromARGB(138, 255, 255, 255),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      'Sobre',
                      style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      'Speed Consórcio',
                      style: GoogleFonts.nunito(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      'CNPJ: 40.258.889/0001-26',
                      style: GoogleFonts.nunito(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      'Contato: (91) 99374-1168',
                      style: GoogleFonts.nunito(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Tooltip(
                      message: 'Veja aonde estamos',
                      child: TextButton(
                        onPressed: () => OpenExternalLink().openMaps(),
                        child: Text(
                          'Endereço: Tv. We 13-B (Cidade Nova II), 201 - conjunto  Cidade Nova\nCEP 67130-410\nAnanindeua/PA',
                          style: GoogleFonts.nunito(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 4.0),
              //       child: Text(
              //         'About',
              //         style: GoogleFonts.nunito(
              //           color: Colors.black,
              //           fontWeight: FontWeight.w800,
              //           fontSize: 14.0,
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 4.0),
              //       child: Text(
              //         'General Info',
              //         style: GoogleFonts.nunito(
              //           color: Colors.black54,
              //           fontWeight: FontWeight.w500,
              //           fontSize: 12.0,
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 4.0),
              //       child: Text(
              //         'Tariffs',
              //         style: GoogleFonts.nunito(
              //           color: Colors.black54,
              //           fontWeight: FontWeight.w500,
              //           fontSize: 12.0,
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 4.0),
              //       child: Text(
              //         'FAQ\'s',
              //         style: GoogleFonts.nunito(
              //           color: Colors.black54,
              //           fontWeight: FontWeight.w500,
              //           fontSize: 12.0,
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 4.0),
              //       child: Text(
              //         'Contacts',
              //         style: GoogleFonts.nunito(
              //           color: Colors.black54,
              //           fontWeight: FontWeight.w500,
              //           fontSize: 12.0,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),

              //same thing like first is repeated....
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.copyright_rounded,
                color: Colors.black54,
                size: 15.0,
              ),
              Text(
                '${DateTime.now().year} Desenvolvido por Adatech',
                style: GoogleFonts.nunito(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
