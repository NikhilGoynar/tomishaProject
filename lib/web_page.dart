import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class WebScreen extends StatefulWidget {
  @override
  _WebScreenState createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String _indexString = "Drei einfache Schritte \nzu deinem neuen Job";
  int _toggleValue = 0;
  String text1 = "";
  String text2 = "";
  String text3 = "";

  String image2 = "7b3b6a4f-e9d4-469f-a248-de52be444c66.png";
  String image3 = "updated_long_girl.png";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var wid = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      key: scaffoldKey,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 659.37,
                      decoration: BoxDecoration(
                        color: Color(0xFFC3E8FF),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Deine Job\n website',
                                style: TextStyle(
                                    fontFamily: 'lato Medium',
                                    fontSize: 60,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                width: 320,
                                height: 45,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF2B6CB0),
                                      Color(0xFF2C7A7B)
                                    ],
                                    stops: [0, 1],
                                    begin: AlignmentDirectional(1, 0.17),
                                    end: AlignmentDirectional(-1, -0.17),
                                  ),
                                  borderRadius: BorderRadius.circular(120),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0.6),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 1, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 10, 0, 0),
                                          child: Text(
                                            'Kostenlos Registrieren',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Lato Medium',
                                              letterSpacing: 0.84,
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
                          Container(
                            width: 151,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFC3E8FF),
                              border: Border.all(
                                color: Color(0xFFC3E8FF),
                              ),
                            ),
                          ),
                          Container(
                            //color: Colors.white,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 250,
                              backgroundImage: AssetImage(
                                'assets/undraw_agreement_aajr__1_-removebg-preview.png',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      child: Image.asset(
                        "assets/webview_wave.png",
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFC3E8FF),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ToggleSwitch(
                            initialLabelIndex: _toggleValue,
                            borderColor: [Colors.lightBlue[50]],
                            totalSwitches: 3,
                            dividerColor: Colors.lightBlue[50],
                            minWidth: 120,
                            minHeight: 50,
                            labels: [
                              'Arbeitnehmer',
                              'Arbeitgeber',
                              'Temporärbüro'
                            ],
                            activeBgColor: [Color.fromARGB(255, 141, 211, 202)],
                            activeFgColor: Colors.white,
                            inactiveBgColor: Color.fromARGB(255, 255, 255, 255),
                            inactiveFgColor: Color.fromARGB(255, 0, 145, 150),
                            onToggle: (index) {
                              if (index == 0) {
                                setState(() {
                                  _toggleValue = index;
                                  _indexString =
                                      ' Drei einfache Schritte \nzu deinem neuen Job';
                                  image2 =
                                      "7b3b6a4f-e9d4-469f-a248-de52be444c66.png";
                                  image3 = "updated_long_girl.png";
                                  text1 = "Erstellen dein Lebenslauf";
                                  text2 = "Erstellen dein Lebenslauf";
                                  text3 = "Mit nur einem Klick bewerben";
                                });
                              } else if (index == 1) {
                                setState(() {
                                  _toggleValue = index;
                                  _indexString =
                                      ' Drei einfache Schritte zu \ndeinem neuen Mitarbeiter';
                                  image2 = "image22removeBg.png";
                                  image3 = "image23removeBg.png";
                                  text1 = "Erstellen dein Unternehmensprofil";
                                  text2 = "Erstellen ein Jobinserat";
                                  text3 = "Wähle deinen neuen Mitarbeiter aus";
                                });
                              } else {
                                setState(() {
                                  _toggleValue = index;
                                  _indexString =
                                      'Drei einfache Schritte zur \nVermittlung neuer Mitarbeiter';
                                  image2 = "image32removeBG.png";
                                  image3 = "image33removeBg.png";
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
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                      child: Text(
                        '$_indexString',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          color: Color(0xFF4A5568),
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional(0.8, -0.7),
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    120, 0, 0, 0),
                                child: Container(
                                  width: 180,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(221, 244, 244, 244),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.44, -0.1),
                                child: Text(
                                  '1.',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    color: Color(0xFF718096),
                                    fontSize: 89,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Erstellen dein Lebenslauf',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              color: Color(0xFF718096),
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
                            child: Image.asset(
                              'assets/first_girl.png',
                              width: 350,
                              height: 230,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          alignment: AlignmentDirectional(0, 2.5),
                          width: double.infinity,
                          height: 100,
                          child: Image.asset(
                            "assets/upper_wave.png",
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFC3E8FF),
                          ),
                          //color: Color(0xFFC3E8FF),
                        ),
                        Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Color(0xFFC3E8FF),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, 0.18),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/$image2',
                                    width: 250,
                                    height: 350,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        39, 0, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          // alignment:
                                          //     AlignmentDirectional(0.44, -0.1),
                                          child: Text(
                                            '2.',
                                            style: TextStyle(
                                              fontFamily: 'Lato',
                                              color: Color(0xFF718096),
                                              fontSize: 89,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4, 48, 0, 0),
                                          child: Text(
                                            'Erstellen dein Lebenslauf',
                                            style: TextStyle(
                                              fontFamily: 'Lato',
                                              color: Color(0xFF718096),
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 100,
                          child: Image.asset(
                            "assets/wave.png",
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFC3E8FF),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional(0.8, -0.7),
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                child: Container(
                                  width: 180,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(221, 216, 242, 242),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.44, -0.1),
                                child: Text(
                                  '3.',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    color: Color(0xFF718096),
                                    fontSize: 89,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 70),
                            child: Text(
                              'Mit nur einem Klick \nbewerben',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                color: Color(0xFF718096),
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
                            child: Image.asset(
                              'assets/$image3',
                              width: 315,
                              height: 230,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  left: wid * 0.2,
                  bottom: 540,
                  child: Container(
                    height: 210,
                    width: 440,
                    child: Image.asset(
                      "assets/Arrow1.png",
                      height: 60,
                      width: 170,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  left: wid * 0.35,
                  bottom: 220,
                  child: Container(
                    height: 220,
                    width: 250,
                    child: Image.asset(
                      "assets/Arrow2.png",
                      height: 120,
                      width: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
