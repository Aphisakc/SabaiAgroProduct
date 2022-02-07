import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadTabWidget extends StatefulWidget {
  const HeadTabWidget({Key key}) : super(key: key);

  @override
  _HeadTabWidgetState createState() => _HeadTabWidgetState();
}

class _HeadTabWidgetState extends State<HeadTabWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                color: Color(0xFF09CBEB),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'SABAI AGRO',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'PLSPRO001',
                                color: FlutterFlowTheme.tertiaryColor,
                                fontSize: 40,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: false,
                              ),
                            )
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, -1),
                          child: Stack(
                            alignment: AlignmentDirectional(0, -1),
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'บริษัท สบาย อะโกร บิสซินเนส แอนด์ อินโนเวชั่น จำกัด',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'PLSPRO001',
                                      color: FlutterFlowTheme.tertiaryColor,
                                      fontSize: 15,
                                      useGoogleFonts: false,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Text(
                                      '_________________________________________',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Lato',
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Text(
                                  'กลุ่มผลิตภัณฑ์ สำหรับปลา',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'PLSPRO001',
                                    color: FlutterFlowTheme.tertiaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [],
                  ),
                  Image.asset(
                    'assets/images/icon_fish.png',
                    width: 75,
                    height: 75,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
