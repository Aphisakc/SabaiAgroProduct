import 'package:sabai_agro_product/carousel_page/carousel_contact.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPageWidget extends StatefulWidget {
  ContactPageWidget({Key key}) : super(key: key);

  @override
  _ContactPageWidgetState createState() => _ContactPageWidgetState();
}

class _ContactPageWidgetState extends State<ContactPageWidget> {
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
            Text(
              'ติดต่อเรา',
              style: FlutterFlowTheme.bodyText1.override(
                fontFamily: 'PLSPRO001',
                color: FlutterFlowTheme.tertiaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                useGoogleFonts: false,
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
        child: Align(
          alignment: AlignmentDirectional(0, 0.05),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
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
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'SABAI AGRO',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                              fontSize: 35,
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
                                              alignment: AlignmentDirectional(
                                                  -1.11, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 20, 0, 0),
                                                child: Text(
                                                  '_________________________________________',
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Lato',
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: 75,
                                    height: 75,
                                    decoration: BoxDecoration(
                                      // color: Color(0xAEFFFFFF),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/icon_contact.png',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 10, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'ทีมงานฝ่ายให้คำปรึกษา',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'PLSPRO001',
                                      color: FlutterFlowTheme.tertiaryColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0x00EEEEEE),
                                  ),
                                  child: CarouselContactPage()),
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
                    decoration: BoxDecoration(
                      color: Color(0xFF707070),
                      shape: BoxShape.rectangle,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 140,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.tertiaryColor,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: Container(
                                              width: 100,
                                              height: 100,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIcon_Team%2001_2.png?alt=media&token=dcb1ed44-fed1-4127-ba99-26e7839ea3f6',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 5, 0, 0),
                                          child: Text(
                                            'สมเกียรติ จันทร์มะโน',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Text(
                                            'Somkiat Chanmano',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              fontSize: 20,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Text(
                                            'MVVP',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              fontSize: 20,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Text(
                                            '060-413-5252, 089-095-5198',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              fontSize: 20,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 140,
                            decoration: BoxDecoration(
                              color: Color(0xFFD4D4D4),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: Container(
                                              width: 100,
                                              height: 100,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIcon_Team%2002.png?alt=media&token=e4d47738-c7dc-4344-843d-def01be9f5db',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 5, 0, 0),
                                          child: Text(
                                            'ขันติ บุญสมพงศ์',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Text(
                                            'Khanti Boonsompomg',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              fontSize: 20,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Text(
                                            'Sale Manager',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              fontSize: 20,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Text(
                                            '086-355-5632',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              fontSize: 20,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 140,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.tertiaryColor,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: Container(
                                              width: 100,
                                              height: 100,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIcon_Team%2003.png?alt=media&token=03d4c923-4735-4670-88b9-00b5bd21a217',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 5, 0, 0),
                                          child: Text(
                                            'อดุลวิทย์ จันทะนาวงษ์',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Text(
                                            'Adulvit Chanthanawong',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              fontSize: 20,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Text(
                                            'Technical Sale Manager',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              fontSize: 20,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 0, 0, 0),
                                              child: Text(
                                                '064-992-2724',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'PLSPRO001',
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 140,
                            decoration: BoxDecoration(
                              color: Color(0xFFD4D4D4),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: Container(
                                              width: 100,
                                              height: 100,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIcon_Team%2004.png?alt=media&token=9968b36a-96cd-4540-adcb-e079c9bd64f2',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 5, 0, 0),
                                          child: Text(
                                            'ชัยยันต์ อาจสอน',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Text(
                                            'Chaiyan Arjsorn',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              fontSize: 20,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Text(
                                            'Sale Manager',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              fontSize: 20,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 0, 0, 0),
                                              child: Text(
                                                '081-344-1692',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'PLSPRO001',
                                                  fontSize: 20,
                                                  useGoogleFonts: false,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              'assets/images/button_central.png',
                                              width: 150,
                                              height: 50,
                                              fit: BoxFit.contain,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 140,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.tertiaryColor,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: Container(
                                              width: 100,
                                              height: 100,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIcon_Team%2005.png?alt=media&token=851d1a07-bd06-4e0b-b8ce-128e45dbaa8a',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 5, 0, 0),
                                          child: Text(
                                            'เนตรทิพย์ ผึ้งภุมริน',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Text(
                                            'Natethip Pungpummarin',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              fontSize: 20,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Text(
                                            'Sale Manager',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              fontSize: 20,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 0, 0, 0),
                                              child: Text(
                                                '064-615-3662',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'PLSPRO001',
                                                  fontSize: 20,
                                                  useGoogleFonts: false,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              'assets/images/button_south.png',
                                              width: 150,
                                              height: 50,
                                              fit: BoxFit.cover,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 140,
                            decoration: BoxDecoration(
                              color: Color(0xFFD4D4D4),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: Container(
                                              width: 100,
                                              height: 100,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIcon_Team%2006.png?alt=media&token=e6b13e66-7757-4cab-823d-3db3d685f90b',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 5, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 5, 0, 0),
                                          child: Text(
                                            'พัชรพล อินหงสา',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Text(
                                            'Phatcharapon Inhongsa',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              fontSize: 20,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Text(
                                            'Consultative Sale Representative',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              fontSize: 20,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 0, 0, 0),
                                              child: Text(
                                                '084-429-8940',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'PLSPRO001',
                                                  fontSize: 20,
                                                  useGoogleFonts: false,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              'assets/images/button_east.png',
                                              width: 150,
                                              height: 50,
                                              fit: BoxFit.cover,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 140,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.tertiaryColor,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: Container(
                                              width: 100,
                                              height: 100,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIcon_Team%2007.png?alt=media&token=218d15d7-c8de-421c-8948-aaea4ec29018',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 5, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 5, 0, 0),
                                          child: Text(
                                            'ปรีชา ชินามล',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Text(
                                            'Precha Chinamon',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              fontSize: 20,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Text(
                                            'Consultative Sale Representative',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'PLSPRO001',
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              fontSize: 20,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 0, 0, 0),
                                              child: Text(
                                                '086-006-1918',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'PLSPRO001',
                                                  fontSize: 20,
                                                  useGoogleFonts: false,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              'assets/images/button_ne.png',
                                              width: 150,
                                              height: 50,
                                              fit: BoxFit.cover,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
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
      ),
    );
  }
}
