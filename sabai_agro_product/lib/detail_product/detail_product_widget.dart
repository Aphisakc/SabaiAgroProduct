import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailProductWidget extends StatefulWidget {
  DetailProductWidget({Key key}) : super(key: key);

  @override
  _DetailProductWidgetState createState() => _DetailProductWidgetState();
}

class _DetailProductWidgetState extends State<DetailProductWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF039BE5),
        automaticallyImplyLeading: true,
        leading: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back_ios,
                color: FlutterFlowTheme.tertiaryColor,
                size: 30,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'product name',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.tertiaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(0, -1),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2Fbg_cont.jpg?alt=media&token=8ee66d95-7459-4091-aea2-556f644b2e49',
                      ).image,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'SABAI AGRO',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'PLSPRO001',
                                            color:
                                                FlutterFlowTheme.tertiaryColor,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                        )
                                      ],
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Stack(
                                        alignment: AlignmentDirectional(0, 0),
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'บริษัท สบาย อะโกร บิสซินเนส แอนด์ อินโนเวชั่น จำกัด',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'PLSPRO001',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  fontSize: 15,
                                                  useGoogleFonts: false,
                                                ),
                                              )
                                            ],
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.11, 0),
                                            child: Text(
                                              '_________________________________________',
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Lato',
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xAEFFFFFF),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.fish,
                                      color: Color(0xFF4EA6E8),
                                      size: 30,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 10),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.65,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      color: Color(0x00EEEEEE),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  height: 50,
                                                  decoration: BoxDecoration(),
                                                  child: Text(
                                                    'Product name',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'PLSPRO001',
                                                      color: FlutterFlowTheme
                                                          .tertiaryColor,
                                                      fontSize: 40,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.65,
                                                    height: 70,
                                                    decoration: BoxDecoration(),
                                                    child: AutoSizeText(
                                                      'Properties',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
                                                        color: FlutterFlowTheme
                                                            .tertiaryColor,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.35,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.network(
                                            '',
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.contain,
                                          ),
                                          Text(
                                            'product pic',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              fontSize: 18,
                                              useGoogleFonts: false,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.tertiaryColor,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        '',
                      ).image,
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'PDF Details of Product',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'PLSPRO001',
                            fontSize: 30,
                            useGoogleFonts: false,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
