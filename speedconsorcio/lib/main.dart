import 'dart:math';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'src/Footer.dart';
import 'src/Header.dart';
import 'src/ProfileImage.dart';
import 'src/ProfileTile.dart';
import 'url_launcher.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Speed Consórcio',
      home: MyApp(),
      theme: ThemeData(colorSchemeSeed: Colors.white),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ScrollController? _controller;
  double pixels = 0.0;
  @override
  void initState() {
    super.initState();

    _controller = ScrollController();
    _controller!.addListener(() {
      setState(() {
        pixels = _controller!.position.pixels;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          controller: _controller,
          child: Column(
            children: [
              Stack(
                children: [
                  MediaQuery.of(context).size.width < 1000
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(children: [
                              Container(
                                height: 600.0,
                                color: Colors.white,
                                width: MediaQuery.of(context).size.width,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    ProfileImage(
                                        top: 140.0,
                                        left: 90.0,
                                        diameter: 200.0,
                                        image: 'assets/artes/CONSORCIO2.png'),
                                    ProfileImage(
                                      top: 110.0,
                                      left: 310.0,
                                      diameter: 150.0,
                                      image: 'assets/artes/COMERCIAL.png',
                                    ),
                                    ProfileImage(
                                      top: 150.0,
                                      left: 520.0,
                                      diameter: 180.0,
                                      image: 'assets/artes/OFICINA.png',
                                    ),
                                    ProfileImage(
                                      top: 360.0,
                                      left: 90.0,
                                      diameter: 170.0,
                                      image: 'assets/artes/RASTREADOR.png',
                                    ),
                                    ProfileImage(
                                      top: 275.0,
                                      left: 280.0,
                                      diameter: 280.0,
                                      image: 'assets/artes/CONSORCIO.png',
                                    ),
                                    ProfileTile(
                                      top: 350.0,
                                      left: -80.0,
                                      title: 'Rastreamento',
                                      subTitle:
                                          'Venha Rastrear seu veículo com a gente',
                                      factor: 1.4,
                                      icon: const Icon(
                                        Icons.radar_sharp,
                                        size: 12.0 * 1.4,
                                        color: Colors.white,
                                      ),
                                    ),
                                    ProfileTile(
                                      top: 505.0,
                                      left: 330.0,
                                      title:
                                          'Realize o sonho da sua casa própria',
                                      subTitle:
                                          'Através do consórcio você tem a chance de ter\nsua casa própria com parcelas\nbaixas e prazos pequenos',
                                      factor: 1.3,
                                      icon: const Icon(
                                        Icons.house_outlined,
                                        size: 12.0 * 2,
                                        color: Colors.white,
                                      ),
                                    ),
                                    ProfileTile(
                                      top: 90.0,
                                      left: -20.0,
                                      title: 'Tenha o seu Carro Zero KM',
                                      subTitle:
                                          'Através do consórcio você tem a chance de ter\nseu carro do ano com parcelas\nbaixas e prazos pequenos',
                                      factor: 1.3,
                                      icon: const Icon(
                                        Icons.car_rental,
                                        size: 12.0 * 2,
                                        color: Colors.white,
                                      ),
                                    ),
                                    ProfileTile(
                                      top: 80.0,
                                      left: 300.0,
                                      title: 'Invista!',
                                      subTitle:
                                          'Com o consórcio Speed, você pode se planejar a longo prazo!',
                                      factor: 1.2,
                                      icon: const Icon(
                                        Icons.timelapse,
                                        size: 12.0 * 1.2,
                                        color: Colors.white,
                                      ),
                                    ),
                                    ProfileTile(
                                      top: 300.0,
                                      left: 550.0,
                                      title: 'Oficina',
                                      subTitle:
                                          'Temos os melhores mecânicos da região\nprontos para atender ao seu chamado',
                                      factor: 1.2,
                                      icon: const Icon(
                                        Icons.room_service_sharp,
                                        size: 12.0 * 1.2,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                //  color: Color.fromARGB(131, 255, 255, 255),
                                width: MediaQuery.of(context).size.width,
                                child: Stack(
                                  children: [
                                    Transform(
                                      transform: Matrix4.rotationZ(pi / 6)
                                        ..translate(-180.0, 170.0),
                                      child: Container(
                                        height: 900.0,
                                        width: 700.0,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              54, 189, 189, 189),
                                          borderRadius:
                                              BorderRadius.circular(300.0),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 650.0,
                                      left: 50.0,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(300.0),
                                        child: Image.asset(
                                          'assets/logo/logo-speed.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 100.0,
                                      left: 0.0,
                                      child: Card(
                                        elevation: 16,
                                        color: const Color.fromARGB(
                                            205, 255, 255, 255),
                                        shadowColor: Colors.transparent,
                                        child: Container(
                                          height: 550.0,
                                          width: 400.0,
                                          padding: const EdgeInsets.all(16),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Entre em contato com a gente!',
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 38.0,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10.0,
                                              ),
                                              Text(
                                                'Estamos empolgados com uma ótima oportunidade que pode nos ajudar a realizar seus objetivos financeiros!',
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 25.0,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20.0,
                                              ),
                                              Container(
                                                width: 300.0,
                                                child: Text(
                                                  'Adoraria compartilhar mais detalhes com você. Por favor, fique à vontade para entrar em contato e conversarmos sobre essa incrível possibilidade.',
                                                  style: GoogleFonts.nunito(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ),

                                              const SizedBox(
                                                height: 30.0,
                                              ),
                                              // Container(
                                              //   height: 45.0,
                                              //   width: 230.0,
                                              //   child: TextField(
                                              //     decoration: InputDecoration(
                                              //       hintText: 'Enter your name',
                                              //       hintStyle: GoogleFonts.nunito(
                                              //         fontSize: 12.0,
                                              //       ),
                                              //       border: OutlineInputBorder(
                                              //         borderRadius:
                                              //             BorderRadius.circular(50.0),
                                              //       ),
                                              //     ),
                                              //   ),
                                              // ),
                                              // Container(
                                              //   height: 45.0,
                                              //   width: 230.0,
                                              //   child: TextField(
                                              //     decoration: InputDecoration(
                                              //       hintText: 'Enter your number phone',
                                              //       hintStyle: GoogleFonts.nunito(
                                              //         fontSize: 12.0,
                                              //       ),
                                              //       border: OutlineInputBorder(
                                              //         borderRadius:
                                              //             BorderRadius.circular(50.0),
                                              //       ),
                                              //     ),
                                              //   ),
                                              // ),
                                              Row(
                                                children: [
                                                  TextButton(
                                                    style: TextButton.styleFrom(
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              211, 160, 25, 25),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                    ),
                                                    onPressed: () {
                                                      OpenExternalLink().open(
                                                          number: 'number');
                                                    },
                                                    child: Container(
                                                      height: 45.0,
                                                      width: 100.0,
                                                      child: Center(
                                                        child: Text(
                                                          'Fale conosco !',
                                                          style: GoogleFonts
                                                              .nunito(
                                                            color: Colors.white,
                                                            fontSize: 13.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  TextButton(
                                                    style: TextButton.styleFrom(
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              221, 82, 82, 82),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                    ),
                                                    onPressed: () {
                                                      OpenExternalLink()
                                                          .openMaps();
                                                    },
                                                    child: Container(
                                                      height: 45.0,
                                                      width: 120.0,
                                                      child: Center(
                                                        child: Text(
                                                          'Nos veja no mapa!',
                                                          style: GoogleFonts
                                                              .nunito(
                                                            color: Colors.white,
                                                            fontSize: 15.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ]),
                          ],
                        )
                      : Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              color: Colors.white,
                              child: Stack(
                                children: [
                                  Transform(
                                    transform: Matrix4.rotationZ(pi / 6)
                                      ..translate(-180.0, 170.0),
                                    child: Container(
                                      height: 900.0,
                                      width: 700.0,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius:
                                            BorderRadius.circular(300.0),
                                      ),
                                    ),
                                  ),
                                  Transform(
                                    transform: Matrix4.rotationZ(pi / 6)
                                      ..translate(180.0, 170.0, 90),
                                    child: Container(
                                      height: 900.0,
                                      width: 700.0,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius:
                                            BorderRadius.circular(300.0),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 200.0,
                                    left: 100.0,
                                    child: Card(
                                      elevation: 16,
                                      color: const Color.fromARGB(
                                          204, 255, 255, 255),
                                      borderOnForeground: true,
                                      shadowColor: const Color.fromARGB(
                                          65, 255, 255, 255),
                                      child: Container(
                                        height: 500.0,
                                        width: 450.0,
                                        padding: const EdgeInsets.all(16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Entre em contato com a gente!',
                                              style: GoogleFonts.montserrat(
                                                fontSize: 38.0,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                            ),
                                            Text(
                                              'Estamos empolgados com uma ótima oportunidade que pode nos ajudar a realizar seus objetivos financeiros!',
                                              style: GoogleFonts.montserrat(
                                                fontSize: 25.0,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20.0,
                                            ),
                                            Container(
                                              width: 300.0,
                                              child: Text(
                                                'Adoraria compartilhar mais detalhes com você. Por favor, fique à vontade para entrar em contato e conversarmos sobre essa incrível possibilidade.',
                                                style: GoogleFonts.nunito(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 30.0,
                                            ),
                                            // Container(
                                            //   height: 45.0,
                                            //   width: 230.0,
                                            //   child: TextField(
                                            //     decoration: InputDecoration(
                                            //       hintText: 'Enter your name',
                                            //       hintStyle: GoogleFonts.nunito(
                                            //         fontSize: 12.0,
                                            //       ),
                                            //       border: OutlineInputBorder(
                                            //         borderRadius:
                                            //             BorderRadius.circular(50.0),
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   height: 45.0,
                                            //   width: 230.0,
                                            //   child: TextField(
                                            //     decoration: InputDecoration(
                                            //       hintText: 'Enter your number phone',
                                            //       hintStyle: GoogleFonts.nunito(
                                            //         fontSize: 12.0,
                                            //       ),
                                            //       border: OutlineInputBorder(
                                            //         borderRadius:
                                            //             BorderRadius.circular(50.0),
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            Row(
                                              children: [
                                                // Container(
                                                //   height: 45.0,
                                                //   width: 230.0,
                                                //   child: TextField(
                                                //     decoration: InputDecoration(
                                                //       hintText:
                                                //           'Enter your email address',
                                                //       hintStyle: GoogleFonts.nunito(
                                                //         fontSize: 12.0,
                                                //       ),
                                                //       border: OutlineInputBorder(
                                                //         borderRadius:
                                                //             BorderRadius.circular(50.0),
                                                //       ),
                                                //     ),
                                                //   ),
                                                // ),
                                                // SizedBox(
                                                //   width: 20.0,
                                                // ),
                                                TextButton(
                                                  style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromARGB(
                                                            221, 119, 16, 16),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    OpenExternalLink()
                                                        .open(number: 'number');
                                                  },
                                                  child: Container(
                                                    height: 45.0,
                                                    width: 100.0,
                                                    child: Center(
                                                      child: Text(
                                                        'Fale conosco!',
                                                        style:
                                                            GoogleFonts.nunito(
                                                          color: Colors.white,
                                                          fontSize: 15.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 20,
                                                ),
                                                TextButton(
                                                  style: TextButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromARGB(
                                                            221, 92, 92, 92),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    OpenExternalLink()
                                                        .openMaps();
                                                  },
                                                  child: Container(
                                                    height: 45.0,
                                                    width: 120.0,
                                                    child: Center(
                                                      child: Text(
                                                        'Nos veja no mapa!',
                                                        style:
                                                            GoogleFonts.nunito(
                                                          color: Colors.white,
                                                          fontSize: 15.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 600.0,
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width * 0.55,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  ProfileImage(
                                      top: 140.0,
                                      left: 90.0,
                                      diameter: 200.0,
                                      image: 'assets/artes/CONSORCIO2.png'),
                                  ProfileImage(
                                    top: 110.0,
                                    left: 310.0,
                                    diameter: 150.0,
                                    image: 'assets/artes/COMERCIAL.png',
                                  ),
                                  ProfileImage(
                                    top: 150.0,
                                    left: 520.0,
                                    diameter: 180.0,
                                    image: 'assets/artes/OFICINA.png',
                                  ),
                                  ProfileImage(
                                    top: 360.0,
                                    left: 90.0,
                                    diameter: 170.0,
                                    image: 'assets/artes/RASTREADOR.png',
                                  ),
                                  ProfileImage(
                                    top: 275.0,
                                    left: 280.0,
                                    diameter: 280.0,
                                    image: 'assets/artes/CONSORCIO.png',
                                  ),
                                  ProfileTile(
                                    top: 350.0,
                                    left: -80.0,
                                    title: 'Rastreamento',
                                    subTitle:
                                        'Venha Rastrear seu veículo com a gente',
                                    factor: 1.4,
                                    icon: const Icon(
                                      Icons.radar_sharp,
                                      size: 12.0 * 1.4,
                                      color: Colors.white,
                                    ),
                                  ),
                                  ProfileTile(
                                    top: 505.0,
                                    left: 330.0,
                                    title:
                                        'Realize o sonho da sua casa própria',
                                    subTitle:
                                        'Através do consórcio você tem a chance de ter\nsua casa própria com parcelas\nbaixas e prazos pequenos',
                                    factor: 1.3,
                                    icon: const Icon(
                                      Icons.house_outlined,
                                      size: 12.0 * 2,
                                      color: Colors.white,
                                    ),
                                  ),
                                  ProfileTile(
                                    top: 90.0,
                                    left: -20.0,
                                    title: 'Tenha o seu Carro Zero KM',
                                    subTitle:
                                        'Através do consórcio você tem a chance de ter\nseu carro do ano com parcelas\nbaixas e prazos pequenos',
                                    factor: 1.3,
                                    icon: const Icon(
                                      Icons.car_rental,
                                      size: 12.0 * 2,
                                      color: Colors.white,
                                    ),
                                  ),
                                  ProfileTile(
                                    top: 80.0,
                                    left: 300.0,
                                    title: 'Invista!',
                                    subTitle:
                                        'Com o consórcio Speed, você pode se planejar a longo prazo!',
                                    factor: 1.2,
                                    icon: const Icon(
                                      Icons.timelapse,
                                      size: 12.0 * 1.2,
                                      color: Colors.white,
                                    ),
                                  ),
                                  ProfileTile(
                                    top: 300.0,
                                    left: 550.0,
                                    title: 'Oficina',
                                    subTitle:
                                        'Temos os melhores mecânicos da região\nprontos para atender ao seu chamado',
                                    factor: 1.2,
                                    icon: const Icon(
                                      Icons.room_service_sharp,
                                      size: 12.0 * 1.2,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                  MediaQuery.of(context).size.width < 1000
                      ? const SizedBox()
                      : Header()
                ],
              ),
              // Container(
              //   height: 400.0,
              //   width: double.infinity,
              //   color: Colors.white,
              //   child: Stack(
              //     children: [
              //       Positioned(
              //         right: -200.0,
              //         child: Container(
              //           height: 330.0,
              //           width: 430.0,
              //           decoration: BoxDecoration(
              //             color: Colors.grey[100],
              //             borderRadius: BorderRadius.circular(300.0),
              //           ),
              //         ),
              //       ),
              //       Column(
              //         children: [
              //           Text(
              //             loremIpsum(words: 9),
              //             style: GoogleFonts.nunito(
              //               fontSize: 20.0,
              //               fontWeight: FontWeight.w700,
              //             ),
              //           ),
              //           SizedBox(
              //             height: 40.0,
              //           ),
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //             children: [
              //               AnimatedOpacity(
              //                 opacity: pixels >= 100 ? 1.0 : 0.0,
              //                 duration: Duration(milliseconds: 500),
              //                 child: AnimatedPadding(
              //                   duration: Duration(milliseconds: 500),
              //                   padding: EdgeInsets.only(
              //                       left: pixels >= 100 ? 0.0 : 500.0),
              //                   child: InfoPalette(
              //                     title: loremIpsum(words: 8),
              //                     text: loremIpsum(words: 15),
              //                     icon: Icons.people_rounded,
              //                   ),
              //                 ),
              //               ),
              //               InfoPalette(
              //                 title: loremIpsum(words: 8),
              //                 text: loremIpsum(words: 15),
              //                 icon: Icons.pie_chart_rounded,
              //               ),
              //               InfoPalette(
              //                 title: loremIpsum(words: 8),
              //                 text: loremIpsum(words: 15),
              //                 icon: Icons.person_rounded,
              //               ),
              //             ],
              //           ),
              //           SizedBox(
              //             height: 60.0,
              //           ),
              //           TextButton(
              //             style: TextButton.styleFrom(
              //               backgroundColor: Colors.white,
              //               primary: Colors.black87,
              //               padding: EdgeInsets.all(0.0),
              //             ),
              //             onPressed: () {},
              //             child: Container(
              //               padding: EdgeInsets.symmetric(
              //                 horizontal: 30.0,
              //                 vertical: 8.0,
              //               ),
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(40.0),
              //                 border: Border.all(
              //                   color: Colors.grey,
              //                 ),
              //               ),
              //               child: Text(
              //                 loremIpsum(words: 8),
              //                 style: GoogleFonts.nunito(
              //                   fontSize: 12.0,
              //                   fontWeight: FontWeight.w800,
              //                 ),
              //               ),
              //             ),
              //           )
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   height: 500.0,
              //   width: MediaQuery.of(context).size.width,
              //   color: Colors.white,
              //   child: Stack(
              //     clipBehavior: Clip.none,
              //     children: [
              //       Positioned(
              //         left: -250.0,
              //         child: Container(
              //           height: 450.0,
              //           width: 700.0,
              //           decoration: BoxDecoration(
              //             color: Colors.amber[400],
              //             borderRadius: BorderRadius.circular(400.0),
              //           ),
              //         ),
              //       ),
              //       AnimatedPositioned(
              //         duration: Duration(milliseconds: 500),
              //         top: 20.0,
              //         left: pixels >= 500 ? 100.0 : 0.0,
              //         child: Container(
              //           height: 400.0,
              //           width: 700.0,
              //           decoration: BoxDecoration(
              //             color: Colors.red,
              //             borderRadius: BorderRadius.circular(20.0),
              //           ),
              //           clipBehavior: Clip.antiAliasWithSaveLayer,
              //           child: Image.network(
              //             'https://miro.medium.com/max/2400/0*qO2PFu6dr04R1O6P.png',
              //             fit: BoxFit.cover,
              //           ),
              //         ),
              //       ),
              //       ProfileTile(
              //         left: 80.0,
              //         top: -10.0,
              //         title: 'Send a final design to the team',
              //         subTitle: 'Sara, Client',
              //         factor: 1.0,
              //       ),
              //       ProfileTile(
              //         left: 620.0,
              //         top: 400.0,
              //         title: 'Publish Your project whenever you want',
              //         subTitle: 'Micheal',
              //         factor: 1.0,
              //       ),
              //       AnimatedPositioned(
              //         duration: Duration(milliseconds: 500),
              //         right: pixels >= 600 ? 100.0 : 0.0,
              //         top: 150.0,
              //         child: AnimatedOpacity(
              //           duration: Duration(milliseconds: 500),
              //           opacity: pixels >= 600 ? 1.0 : 0.0,
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 loremIpsum(words: 8),
              //                 style: GoogleFonts.nunito(
              //                   fontWeight: FontWeight.w800,
              //                   fontSize: 25.0,
              //                 ),
              //               ),
              //               SizedBox(
              //                 height: 15.0,
              //               ),
              //               Container(
              //                 width: 280.0,
              //                 child: Text(
              //                   loremIpsum(words: 20),
              //                   style: GoogleFonts.nunito(
              //                     fontWeight: FontWeight.w400,
              //                     color: Colors.black54,
              //                     fontSize: 14.0,
              //                   ),
              //                 ),
              //               ),
              //               SizedBox(
              //                 height: 20.0,
              //               ),
              //               TextButton(
              //                 style: TextButton.styleFrom(
              //                   shape: RoundedRectangleBorder(
              //                     borderRadius: BorderRadius.circular(100.0),
              //                   ),
              //                   backgroundColor: Colors.grey[900],
              //                   padding: EdgeInsets.symmetric(
              //                     horizontal: 50.0,
              //                     vertical: 20.0,
              //                   ),
              //                 ),
              //                 onPressed: () {},
              //                 child: Text(
              //                   loremIpsum(words: 8),
              //                   style: GoogleFonts.nunito(
              //                     fontSize: 12.0,
              //                     fontWeight: FontWeight.w600,
              //                     color: Colors.white,
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // Container(
              //   height: 600.0,
              //   width: MediaQuery.of(context).size.width,
              //   color: Colors.white,
              //   child: Stack(
              //     children: [
              //       Align(
              //         child: Column(
              //           children: [
              //             Text(
              //               loremIpsum(words: 8),
              //               style: GoogleFonts.nunito(
              //                 fontWeight: FontWeight.w800,
              //                 fontSize: 25.0,
              //               ),
              //             ),
              //             Text(
              //               loremIpsum(words: 8),
              //               style: GoogleFonts.nunito(
              //                 fontWeight: FontWeight.w600,
              //                 fontSize: 14.0,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //       AnimatedAlign(
              //         duration: Duration(milliseconds: 500),
              //         alignment: pixels >= 1200
              //             ? Alignment(0.0, 0.0)
              //             : Alignment(-0.2, 0.0),
              //         child: AnimatedOpacity(
              //           opacity: pixels >= 1200 ? 1.0 : 0.0,
              //           duration: Duration(milliseconds: 500),
              //           child: Container(
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Stack(
              //                   clipBehavior: Clip.none,
              //                   children: [
              //                     Positioned(
              //                       left: -70.0,
              //                       top: -60.0,
              //                       child: Icon(
              //                         Icons.format_quote,
              //                         color: Colors.grey[300],
              //                         size: 150.0,
              //                       ),
              //                     ),
              //                     Text(
              //                       loremIpsum(words: 8),
              //                       style: GoogleFonts.nunito(
              //                         fontWeight: FontWeight.w800,
              //                         fontSize: 30.0,
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //                 SizedBox(
              //                   height: 20.0,
              //                 ),
              //                 Container(
              //                   width: 360.0,
              //                   child: Text(
              //                     loremIpsum(words: 8),
              //                     style: GoogleFonts.nunito(
              //                       fontWeight: FontWeight.w600,
              //                       fontSize: 14.0,
              //                     ),
              //                     textAlign: TextAlign.center,
              //                   ),
              //                 ),
              //                 SizedBox(
              //                   height: 10.0,
              //                 ),
              //                 Text(
              //                   loremIpsum(words: 8),
              //                   style: GoogleFonts.nunito(
              //                     fontWeight: FontWeight.w800,
              //                     fontSize: 14.0,
              //                   ),
              //                 ),
              //                 Container(
              //                   height: 1.5,
              //                   width: 100.0,
              //                   color: Colors.black87,
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //       TestimonialTile(
              //         image:
              //             'https://images.unsplash.com/photo-1565623006066-82f23c79210b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80',
              //         left: 780.0,
              //         top: pixels >= 1000 ? 100.0 : 130.0,
              //         leftalign: false,
              //       ),
              //       TestimonialTile(
              //         image:
              //             'https://images.unsplash.com/photo-1612282131293-37332d3cea00?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1995&q=80',
              //         left: 840.0,
              //         top: pixels >= 1200 ? 400.0 : 430.0,
              //         leftalign: false,
              //       ),
              //       TestimonialTile(
              //         image:
              //             'https://images.unsplash.com/photo-1492633423870-43d1cd2775eb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80',
              //         left: 440.0,
              //         top: pixels >= 1300 ? 450.0 : 480.0,
              //         leftalign: true,
              //       ),
              //       Positioned(
              //         right: 350.0,
              //         top: 200.0,
              //         child: Container(
              //           height: 20.0,
              //           width: 20.0,
              //           decoration: BoxDecoration(
              //             color: Colors.red[600],
              //             borderRadius: BorderRadius.circular(60.0),
              //             boxShadow: [
              //               BoxShadow(
              //                 blurRadius: 20.0,
              //                 offset: Offset(0.0, 10.0),
              //                 color: Colors.black12,
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),

              //       //rest two also same only positions and size and color changes....
              //       Positioned(
              //         right: 200.0,
              //         top: 250.0,
              //         child: Container(
              //           height: 60.0,
              //           width: 60.0,
              //           decoration: BoxDecoration(
              //             color: Colors.amber,
              //             borderRadius: BorderRadius.circular(60.0),
              //             boxShadow: [
              //               BoxShadow(
              //                 blurRadius: 20.0,
              //                 offset: Offset(0.0, 10.0),
              //                 color: Colors.black12,
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //       Positioned(
              //         right: 250.0,
              //         top: 450.0,
              //         child: Container(
              //           height: 30.0,
              //           width: 30.0,
              //           decoration: BoxDecoration(
              //             color: Color(0xff373e98),
              //             borderRadius: BorderRadius.circular(60.0),
              //             boxShadow: [
              //               BoxShadow(
              //                 blurRadius: 20.0,
              //                 offset: Offset(0.0, 10.0),
              //                 color: Colors.black12,
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 350.0,
                color: const Color.fromARGB(255, 99, 99, 99),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // AnimatedAlign(
                    //   duration: Duration(milliseconds: 500),
                    //   alignment: pixels >= 1600
                    //       ? Alignment(0.0, 1.0)
                    //       : Alignment(-0.2, 1.0),
                    //   child: AnimatedOpacity(
                    //     opacity: pixels >= 1600 ? 1.0 : 0.0,
                    //     duration: Duration(milliseconds: 500),
                    //     child: Container(
                    //       height: 600.0,
                    //       width: 400.0,
                    //       child: Column(
                    //         mainAxisAlignment: MainAxisAlignment.start,
                    //         children: [
                    //           SizedBox(
                    //             height: 80.0,
                    //           ),
                    //           Text(
                    //             loremIpsum(words: 8),
                    //             style: GoogleFonts.josefinSans(
                    //               fontWeight: FontWeight.w500,
                    //               letterSpacing: 1.0,
                    //               fontSize: 35.0,
                    //               color: Colors.white,
                    //             ),
                    //           ),
                    //           SizedBox(
                    //             height: 20.0,
                    //           ),
                    //           Text(
                    //             loremIpsum(words: 8),
                    //             style: GoogleFonts.nunito(
                    //               color: Colors.white,
                    //               fontWeight: FontWeight.w600,
                    //               fontSize: 14.0,
                    //             ),
                    //           ),
                    //           SizedBox(
                    //             height: 30.0,
                    //           ),
                    //           Row(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               TextButton(
                    //                 onPressed: () {},
                    //                 child: TextButton(
                    //                   style: TextButton.styleFrom(
                    //                     shape: RoundedRectangleBorder(
                    //                       borderRadius:
                    //                           BorderRadius.circular(40.0),
                    //                     ),
                    //                     backgroundColor: Colors.white,
                    //                     padding: EdgeInsets.all(0.0),
                    //                   ),
                    //                   onPressed: () {},
                    //                   child: Container(
                    //                     padding: EdgeInsets.symmetric(
                    //                       horizontal: 30.0,
                    //                       vertical: 12.0,
                    //                     ),
                    //                     decoration: BoxDecoration(
                    //                       borderRadius:
                    //                           BorderRadius.circular(40.0),
                    //                       border: Border.all(
                    //                         color: Colors.white,
                    //                       ),
                    //                     ),
                    //                     child: Text(
                    //                       loremIpsum(words: 8),
                    //                       style: GoogleFonts.josefinSans(
                    //                         color: Color(0xff373e98),
                    //                         fontSize: 12.0,
                    //                         fontWeight: FontWeight.w800,
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //               SizedBox(
                    //                 width: 20.0,
                    //               ),
                    //               TextButton(
                    //                 style: TextButton.styleFrom(
                    //                   shape: RoundedRectangleBorder(
                    //                     borderRadius:
                    //                         BorderRadius.circular(40.0),
                    //                   ),
                    //                   //color: Colors.white,
                    //                   padding: EdgeInsets.all(0.0),
                    //                 ),
                    //                 onPressed: () {},
                    //                 child: Container(
                    //                   padding: EdgeInsets.symmetric(
                    //                     horizontal: 30.0,
                    //                     vertical: 12.0,
                    //                   ),
                    //                   decoration: BoxDecoration(
                    //                     borderRadius:
                    //                         BorderRadius.circular(40.0),
                    //                     border: Border.all(
                    //                       color: Colors.white,
                    //                     ),
                    //                   ),
                    //                   child: Text(
                    //                     loremIpsum(words: 8),
                    //                     style: GoogleFonts.josefinSans(
                    //                       color: Colors.white,
                    //                       fontSize: 12.0,
                    //                       fontWeight: FontWeight.w800,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Align(
                      alignment: const Alignment(1.18, 0.0),
                      child: Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 87, 43, 43),
                          borderRadius: BorderRadius.circular(100.0),
                          boxShadow: [
                            const BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10.0,
                              offset: Offset(0.0, 5.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      child: Footer(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
