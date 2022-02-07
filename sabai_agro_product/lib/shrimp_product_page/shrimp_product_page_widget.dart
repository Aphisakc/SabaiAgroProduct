import 'package:sabai_agro_product/carousel_page/carousel_shrimp.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ShrimpProductPageWidget extends StatefulWidget {
  ShrimpProductPageWidget({Key key}) : super(key: key);

  @override
  _ShrimpProductPageWidgetState createState() =>
      _ShrimpProductPageWidgetState();
}

class _ShrimpProductPageWidgetState extends State<ShrimpProductPageWidget> {
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
              'กลุ่มสินค้ากุ้ง',
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
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF2789D4),
                  Color(0xFF268BD7),
                  Color(0xFF14456A)
                ],
                stops: [0, 0.5, 1],
                begin: AlignmentDirectional(1, -1),
                end: AlignmentDirectional(-1, 1),
              ),
              shape: BoxShape.rectangle,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/all_product_page%2Fbg_all.jpg?alt=media&token=d21ad2ed-14f9-4727-8e02-af453af0f50c',
                      ).image,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
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
                                      'assets/images/icon_shrimp.png',
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
                                  EdgeInsetsDirectional.fromSTEB(16, 10, 0, 5),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'กลุ่มผลิตภัณฑ์ สำหรับกุ้ง',
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
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0x00EEEEEE),
                                  ),
                                  child: CarouselShrimpPage()),
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
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 1,
                            decoration: BoxDecoration(
                              color: Color(0x4E707070),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                                child: ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0xFFF5F5F5),
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 120,
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4EA6E8),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                5, 5, 5, 5),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Image.network(
                                                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/shrimp_product_page%2FFarm%20Turbo%20K.png?alt=media&token=cdb1d150-07ef-4a12-958d-a8a645c321ac',
                                                          width: 80,
                                                          height: 110,
                                                          fit: BoxFit.cover,
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 10, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 5, 0, 0),
                                                      child: Text(
                                                        'ฟาร์มเทอร์โบ เค',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'PLSPRO001',
                                                          color:
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts: false,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 0, 0, 0),
                                                      child: Text(
                                                        'อาหารเสริมฟื้นฟูสภาพหลังการป่วยและเร่งการเจริญเติบโตกุ้งก่อนจับขาย',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'PLSPRO001',
                                                          fontSize: 16,
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
                                    ),
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0xFFF5F5F5),
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 120,
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4EA6E8),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                5, 5, 5, 5),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Image.network(
                                                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/shrimp_product_page%2FFarm%20Highmune%20K.png?alt=media&token=69dc4a37-c14a-49b5-a353-bc37c3c7854c',
                                                          width: 80,
                                                          height: 110,
                                                          fit: BoxFit.cover,
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 10, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 5, 0, 0),
                                                      child: Text(
                                                        'ฟาร์มไฮมูน เค',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'PLSPRO001',
                                                          color:
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts: false,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 0, 0, 0),
                                                      child: Text(
                                                        'เสริมสร้างและกระตุ้นภูมิคุ้มกันของกุ้งแบบองค์รวม',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'PLSPRO001',
                                                          fontSize: 16,
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
                                    ),
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0xFFF5F5F5),
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 120,
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4EA6E8),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                5, 5, 5, 5),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Image.network(
                                                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/shrimp_product_page%2FProduct%20Anti_Vibrios.png?alt=media&token=fe77a7db-589a-4bab-a133-5bb2b7f45ced',
                                                          width: 80,
                                                          height: 110,
                                                          fit: BoxFit.cover,
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 10, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 5, 0, 0),
                                                      child: Text(
                                                        'ฟาร์ม-เซฟวัน เค',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'PLSPRO001',
                                                          color:
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts: false,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 0, 0, 0),
                                                      child: Text(
                                                        'ป้องกันความเสียหายของลูกกุ้งและในช่วงเดือนแรก',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'PLSPRO001',
                                                          fontSize: 16,
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
                                    ),
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0xFFF5F5F5),
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 120,
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4EA6E8),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                5, 5, 5, 5),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Image.network(
                                                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/shrimp_product_page%2FProduct%20Farmmin%20K%20File%20for%20PR.png?alt=media&token=ec33a8ee-3a51-4de9-83a6-7207e2dd310e',
                                                          width: 90,
                                                          height: 110,
                                                          fit: BoxFit.cover,
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 10, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 5, 0, 0),
                                                      child: Text(
                                                        'ฟาร์มมิน เค',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'PLSPRO001',
                                                          color:
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts: false,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 0, 0, 0),
                                                      child: Text(
                                                        'แร่ธาตุคีเลตเสริมวติะมินเพิ่มการดูดซึม\nรักษาสมดุลของแร่ธาตุสำหรับกุ้ง',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'PLSPRO001',
                                                          fontSize: 16,
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
                                    ),
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0xFFF5F5F5),
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 120,
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4EA6E8),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                5, 5, 5, 5),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Image.network(
                                                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/shrimp_product_page%2FFarm%20Heptody.png?alt=media&token=b7dc0626-1ede-4d77-a4fd-4d49721be47f',
                                                          width: 80,
                                                          height: 110,
                                                          fit: BoxFit.cover,
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 10, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 5, 0, 0),
                                                      child: Text(
                                                        'ฟาร์ม-เฮปโตดี้',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'PLSPRO001',
                                                          color:
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts: false,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 0, 0, 0),
                                                      child: Text(
                                                        'อาหารเสริม บำรุงตับ ปรับลำไส้กุ้ง ให้แข็งแรงเพิ่มมากขึ้น',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'PLSPRO001',
                                                          fontSize: 16,
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
                                    ),
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0xFFF5F5F5),
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 120,
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4EA6E8),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                5, 5, 5, 5),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Image.network(
                                                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/shrimp_product_page%2FSanar%20Anti_EHP%20Product%20Non%20Background.png?alt=media&token=55e67ff4-b8f2-4b6f-a323-895c2b554264',
                                                          width: 90,
                                                          height: 110,
                                                          fit: BoxFit.cover,
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 10, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 5, 0, 0),
                                                      child: Text(
                                                        'ฟาร์มแอนตี้ อีเฮชพี',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'PLSPRO001',
                                                          color:
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts: false,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 0, 0, 0),
                                                      child: Text(
                                                        'ป้องกันความเสียหายจากโรค EHP และขี้ขาว',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'PLSPRO001',
                                                          fontSize: 16,
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
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 3),
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: Color(0xFFF5F5F5),
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFEEEEEE),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 120,
                                                    height: 120,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF4EA6E8),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5, 5, 5, 5),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Image.network(
                                                            'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/shrimp_product_page%2FViRex.png?alt=media&token=bdfa93eb-b5aa-444e-90be-613f141e6ee7',
                                                            width: 80,
                                                            height: 110,
                                                            fit: BoxFit.contain,
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 10, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 5,
                                                                    0, 0),
                                                        child: Text(
                                                          'ไวเร็กซ์',
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'PLSPRO001',
                                                            color:
                                                                FlutterFlowTheme
                                                                    .primaryColor,
                                                            fontSize: 25,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 0,
                                                                    0, 0),
                                                        child: Text(
                                                          'สารฆ่าเชื้อที่มีความปลอดภัยทั้งต่อผู้ใช้\nงานและปลอดภัยต่อสิ่งแวดล้อมกำจัดเชื้อแบคทีเรีย ไวรัส ปรสิตภายนอก เชื้อรา ',
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'PLSPRO001',
                                                            fontSize: 16,
                                                            useGoogleFonts:
                                                                false,
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
                                      ),
                                    )
                                  ],
                                ),
                              ),
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
        ),
      ),
    );
  }
}
