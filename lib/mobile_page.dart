import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:tomisha_flutter_task/custom_clip.dart';

class HomePageWidget extends StatefulWidget {
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  int _toggleValue = 0;
  String _indexString = "Drei einfache Schritte \nzu deinem neuen Job";
  String text1 = "";
  String text2 = "";
  String text3 = "";

  String image2 = "7b3b6a4f-e9d4-469f-a248-de52be444c66.png";
  String image3 = "updated_long_girl.png";
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var wid = size.width;
    var height = size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xFFEBF4FF),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-1, 0.05),
                child: SingleChildScrollView(
                  reverse: true,
                  child: Container(
                    width: wid,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(1, -0.9),
                          child: Container(
                            width: wid,
                            height: height,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFFCAE5F9), Color(0xFFE6FFFA)],
                                stops: [0, 1],
                                begin: AlignmentDirectional(0.98, 1),
                                end: AlignmentDirectional(-0.98, -1),
                              ),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Stack(
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          SizedBox(
                                            height: 120,
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 25, 0, 0),
                                              child: Text(
                                                'Deine Job\nwebsite',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'Lato',
                                                  color: Color(0xFF2D3748),
                                                  fontSize: 42,
                                                  letterSpacing: 1.26,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Image.asset(
                                              'assets/undraw_agreement_aajr__1_-removebg-preview.png',
                                              width: double.infinity,
                                              height: 425.84,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Image.asset(
                                            'assets/wave.png',
                                            width: double.infinity,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                          Container(
                                            child: Column(
                                              children: [
                                                ToggleSwitch(
                                                  initialLabelIndex:
                                                      _toggleValue,
                                                  borderColor: [
                                                    Colors.lightBlue[50]
                                                  ],
                                                  totalSwitches: 3,

                                                  dividerColor:
                                                      Colors.lightBlue[50],
                                                  //borderColor: [],
                                                  minWidth: 120,
                                                  minHeight: 50,
                                                  labels: [
                                                    'Arbeitnehmer',
                                                    'Arbeitgeber',
                                                    'Temporärbüro'
                                                  ],
                                                  activeBgColor: [
                                                    Color.fromARGB(
                                                        255, 141, 211, 202)
                                                  ],

                                                  activeFgColor: Colors.white,
                                                  inactiveBgColor:
                                                      Color.fromARGB(
                                                          255, 255, 255, 255),
                                                  inactiveFgColor:
                                                      Color.fromARGB(
                                                          255, 0, 145, 150),
                                                  onToggle: (index) {
                                                    if (index == 0) {
                                                      setState(() {
                                                        _toggleValue = index;
                                                        _indexString =
                                                            ' Drei einfache Schritte \nzu deinem neuen Job';
                                                        image2 =
                                                            "7b3b6a4f-e9d4-469f-a248-de52be444c66.png";
                                                        image3 =
                                                            "updated_long_girl.png";
                                                        text1 =
                                                            "Erstellen dein Lebenslauf";
                                                        text2 =
                                                            "Erstellen dein Lebenslauf";
                                                        text3 =
                                                            "Mit nur einem Klick bewerben";
                                                      });
                                                    } else if (index == 1) {
                                                      setState(() {
                                                        _toggleValue = index;
                                                        _indexString =
                                                            ' Drei einfache Schritte zu \ndeinem neuen Mitarbeiter';

                                                        image2 =
                                                            "image22removeBg.png";
                                                        image3 =
                                                            "image23removeBg.png";
                                                        text1 =
                                                            "Erstellen dein Unternehmensprofil";
                                                        text2 =
                                                            "Erstellen ein Jobinserat";
                                                        text3 =
                                                            "Wähle deinen neuen Mitarbeiter aus";
                                                      });
                                                    } else {
                                                      setState(() {
                                                        _toggleValue = index;
                                                        _indexString =
                                                            'Drei einfache Schritte zur \nVermittlung neuer Mitarbeiter';

                                                        image2 =
                                                            "image32removeBG.png";
                                                        image3 =
                                                            "image33removeBg.png";
                                                        text1 =
                                                            "Drei einfache Schritte zur Vermittlung neuer Mitarbeiter";
                                                        text2 =
                                                            "Erhalte Vermittlungs- angebot von Arbeitgeber";
                                                        text3 =
                                                            "Vermittlung nach Provision oder Stundenlohn";
                                                      });
                                                    }
                                                  },
                                                )
                                              ],
                                            ),
                                            color: Colors.white,
                                            width: double.infinity,
                                            height: 100,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 75,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.05, 0),
                                                  child: Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(0, 2, 0, 2),
                                                      child: Text(
                                                        '$_indexString',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontFamily: 'Lato',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              Color(0xFF4A5568),
                                                          fontSize: wid > 400
                                                              ? 27
                                                              : wid * 0.065,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 264,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0, 0),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        wid *
                                                                            0.05,
                                                                        0,
                                                                        0,
                                                                        0),
                                                                child: Text(
                                                                  '1.',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style:
                                                                      TextStyle(
                                                                    fontFamily:
                                                                        'Lato  Regular',
                                                                    color: Color(
                                                                        0xFF718096),
                                                                    fontSize: wid >
                                                                            400
                                                                        ? 110
                                                                        : wid *
                                                                            0.3,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      wid *
                                                                          0.03,
                                                                      0,
                                                                      0,
                                                                      0),
                                                          child: Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          wid *
                                                                              0.03,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/first_girl.png',
                                                                        width: wid >
                                                                                480
                                                                            ? 230
                                                                            : wid *
                                                                                0.59,
                                                                        height: wid >
                                                                                250
                                                                            ? 150.5
                                                                            : 100,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          35),
                                                                  child:
                                                                      Container(
                                                                    width: wid *
                                                                        0.5,
                                                                    height: 19,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Text(
                                                                          'Erstellen dein Lebenslauf',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: TextStyle(
                                                                              fontSize: wid > 400 ? 15 : wid * 0.043,
                                                                              fontFamily: 'Lato',
                                                                              color: Color(0xFF718096),
                                                                              fontWeight: FontWeight.w500),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 300.64,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                            ),
                                            child: Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: ClipPath(
                                                clipper: waveClipper(),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 350,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFE6FFFA),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            wid < 500
                                                                                ? 25
                                                                                : wid * 0.07,
                                                                            15,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          '2.',
                                                                          style:
                                                                              TextStyle(
                                                                            fontFamily:
                                                                                'Lato  Regular',
                                                                            color:
                                                                                Color(0xFF718096),
                                                                            fontSize: wid > 400
                                                                                ? 110
                                                                                : wid * 0.3,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Container(
                                                                    width: wid *
                                                                        0.4,
                                                                    height: 119,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0xFFE6FFFA),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                5),
                                                                            child:
                                                                                Text(
                                                                              '  Erstellen dein Lebenslauf',
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(
                                                                                fontFamily: 'Lato  Regular',
                                                                                color: Color(0xFF718096),
                                                                                fontSize: wid > 400 ? 15 : wid * 0.05,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      // Align(
                                                      //   alignment:
                                                      //       AlignmentDirectional(
                                                      //           0, 2.51),
                                                      //   child: Image.asset(
                                                      //     'assets/wave2.png',
                                                      //     width: double.infinity,
                                                      //     height:
                                                      //         wid > 500 ? 0 : 158,
                                                      //     fit: BoxFit.cover,
                                                      //   ),
                                                      // ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -0.09, 1),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  0, 10, 0, 1),
                                                          child: Image.asset(
                                                            'assets/$image2',
                                                            width: wid > 480
                                                                ? 400
                                                                : wid * 0.83,
                                                            height: 186.55,
                                                            //fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      // Align(
                                                      //   alignment:
                                                      //       AlignmentDirectional(
                                                      //           0, -1),
                                                      //   child: Image.asset(
                                                      //     'assets/wave1.png',
                                                      //     width: double.infinity,
                                                      //     height: 150,
                                                      //     fit: BoxFit.cover,
                                                      //   ),
                                                      // ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0.2),
                                            child: Container(
                                              width: double.infinity,
                                              height: 460,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 460,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, -0.55),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, -0.05),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        wid *
                                                                            0.05,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          wid *
                                                                              0.05,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    '3.',
                                                                    style:
                                                                        TextStyle(
                                                                      fontFamily:
                                                                          'Lato',
                                                                      color: Color(
                                                                          0xFF718096),
                                                                      fontSize: wid >
                                                                              400
                                                                          ? 110
                                                                          : wid *
                                                                              0.3,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          5),
                                                                  child: Text(
                                                                    'Mit nur einem Klick \nbewerben',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style:
                                                                        TextStyle(
                                                                      fontFamily:
                                                                          'Lato',
                                                                      color: Color(
                                                                          0xFF718096),
                                                                      fontSize: wid >
                                                                              400
                                                                          ? 15
                                                                          : wid *
                                                                              0.05,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Image.asset(
                                                          'assets/$image3',
                                                          width: wid > 480
                                                              ? 350
                                                              : wid * 0.8,
                                                          height: 170,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 8,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF054C8C), Color(0xFF319795)],
                    stops: [0, 1],
                    begin: AlignmentDirectional(1, 0.03),
                    end: AlignmentDirectional(-1, -0.03),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: Container(
                  width: double.infinity,
                  height: 128,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0xFF5F5F66),
                        offset: Offset(0, -1),
                        spreadRadius: 0,
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.05, -0.3),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Container(
                            width: wid * 0.98,
                            height: 45,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(20.02, 580),
                                )
                              ],
                              gradient: LinearGradient(
                                colors: [Color(0xFF2B6CB0), Color(0xFF2C7A7B)],
                                stops: [0, 1],
                                begin: AlignmentDirectional(1, 0.17),
                                end: AlignmentDirectional(-1, -0.17),
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0.6),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 0),
                                      child: Text(
                                        'Kostenlos Registrieren',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.97),
                child: Container(
                  width: double.infinity,
                  height: 67,
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F3F3),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                        color: Color(0xF0F0EBEB),
                        offset: Offset(0, 3),
                        spreadRadius: 2,
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                    border: Border.all(
                      color: Color(0xFFFDFDFD),
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.85, 0.1),
                            child: Text(
                              'Login',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontFamily: 'Lato  Medium',
                                color: Color(0xFF319795),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
