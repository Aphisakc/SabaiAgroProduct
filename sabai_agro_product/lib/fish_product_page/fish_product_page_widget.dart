import 'package:sabai_agro_product/carousel_page/carousel_fish.dart';

import '../detail_product/detail_product_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FishProductPageWidget extends StatefulWidget {
  FishProductPageWidget({Key key}) : super(key: key);

  @override
  _FishProductPageWidgetState createState() => _FishProductPageWidgetState();
}

class _FishProductPageWidgetState extends State<FishProductPageWidget> {
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
              'กลุ่มสินค้าปลา',
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
                                      'assets/images/icon_fish.png',
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
                                    'กลุ่มผลิตภัณฑ์ สำหรับปลา',
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
                                  child: CarouselFishPage()),
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
                      color: Color(0x4E707070),
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
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                              child: ListView(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              DetailProductWidget(),
                                        ),
                                      );
                                    },
                                    child: Card(
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
                                          color: FlutterFlowTheme.tertiaryColor,
                                        ),
                                        child: InkWell(
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailProductWidget(),
                                              ),
                                            );
                                          },
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
                                                            'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2FBetacan.png?alt=media&token=73b4634b-6a7c-4aca-9eaa-22f5f51d415a',
                                                            width: 100,
                                                            height: 110,
                                                            fit: BoxFit.cover,
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
                                                          'เบต้าแคน',
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
                                                          'อาหารเสริมโปรตีน ชนิดเบต้ากลูแคน เพื่อเสริมสร้างภูมิคุ้มกัน ให้แข็งแรง โตเร็ว ',
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
                                      width: MediaQuery.of(context).size.width,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Image.network(
                                                        'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2FOral_c.png?alt=media&token=007236bb-deb4-4bf7-925a-5753b5d24475',
                                                        width: 100,
                                                        height: 110,
                                                        fit: BoxFit.contain,
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
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 5, 0, 0),
                                                    child: Text(
                                                      'ออล่า-ซี',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
                                                        color: FlutterFlowTheme
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
                                                      'วิตามินซีชนิดผงละลายน้ำเพื่อลดความเครียด เสริมสร้างภูมิคุ้มกัน ให้แข็งแรง และโตเร็ว',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
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
                                      width: MediaQuery.of(context).size.width,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Image.network(
                                                        'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2FSabai%20Bio.png?alt=media&token=f9bd0ed2-e69f-4815-9831-0504bb5eeb8b',
                                                        width: 100,
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
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 5, 0, 0),
                                                    child: Text(
                                                      'สบายไบโอ',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
                                                        color: FlutterFlowTheme
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
                                                      'จุลินทรีย์เชื้อดีชนิดเข้มข้นสูงข่มเชื้อโรคร้ายย่อยสลายสารอินทรีย์ควบคุมน้ำและดินก้นบ่อได้ดีตลอดการเลี้ยง',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
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
                                      width: MediaQuery.of(context).size.width,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Image.network(
                                                        'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2F%E0%B9%80%E0%B8%AD%E0%B9%82%E0%B8%99%E0%B8%A7%E0%B8%B4%E0%B8%97.png?alt=media&token=c4789288-2398-4c7b-8325-1c34c9fc02c5',
                                                        width: 100,
                                                        height: 110,
                                                        fit: BoxFit.contain,
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
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 5, 0, 0),
                                                    child: Text(
                                                      'เอโนวิท',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
                                                        color: FlutterFlowTheme
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
                                                      'วิตามินและกรดอะมิโนชนิดน้ำ ลดความเครียดและเสริมภูมิคุ้มกัน ช่วยให้สัตว์แข็งแรงและโตเร็ว',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
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
                                      width: MediaQuery.of(context).size.width,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Image.network(
                                                        'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2FDancin%2050.png?alt=media&token=aed206a5-99cb-4576-a617-4e1a07983059',
                                                        width: 100,
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
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 5, 0, 0),
                                                    child: Text(
                                                      'แดนซิน 50%',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
                                                        color: FlutterFlowTheme
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
                                                      'ยาปฏิชีวนะชนิดผงละลายน้ำ รักษาโรคแบคทีเรียแกรมบวกและแกรมลบ',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
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
                                      width: MediaQuery.of(context).size.width,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Image.network(
                                                        'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2Fotc_bact.png?alt=media&token=1a2517b2-fcfb-4d38-8e18-4a499cd575d6',
                                                        width: 100,
                                                        height: 110,
                                                        fit: BoxFit.contain,
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
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 5, 0, 0),
                                                    child: Text(
                                                      'โอทีซี แบค',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
                                                        color: FlutterFlowTheme
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
                                                      'ยาปฏิชีวนะชนิดผงละลายน้ำ ขนาด 500 กรัมใช้รักษาโรคที่เกิดจากการติดเชื้อแบคทีเรียแกรมบวกและลบ',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
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
                                      width: MediaQuery.of(context).size.width,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Image.network(
                                                        'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2FSolar%2020.png?alt=media&token=8bbf077d-b3b3-41fd-b736-d19b940bf4c3',
                                                        width: 100,
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
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 5, 0, 0),
                                                    child: Text(
                                                      'โซล่า 20%',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
                                                        color: FlutterFlowTheme
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
                                                      'ยาปฏิชีวนะชนิดผงขนาด 1,000 กรัม ตัวยาเอนโรฟล๊อกซาซิน 200 กรัม ใช้รักษาโรคเชื้อแบคทีเรีย',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
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
                                      width: MediaQuery.of(context).size.width,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Image.network(
                                                        'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2FSabai%20Pro.png?alt=media&token=1e358c24-8426-4951-bde7-8c9d16ae6712',
                                                        width: 100,
                                                        height: 110,
                                                        fit: BoxFit.contain,
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
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 5, 0, 0),
                                                    child: Text(
                                                      'สบายโปร',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
                                                        color: FlutterFlowTheme
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
                                                      'จุลินทรีย์เชื้อดีชนิดน้ำเข้มข้นสูงเพื่อต่อ\nต้านเชื้อโรคร้ายสร้างภูมิคุ้มกันสร้างความแข็งแรง สร้างเอนไซม์เพื่อย่อยอาหาร',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
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
                                      width: MediaQuery.of(context).size.width,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Image.network(
                                                        'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2FSalmon%20Grow_Bucket%202.png?alt=media&token=f5947bdf-4a8c-43c3-a75b-a605374e1a1c',
                                                        width: 100,
                                                        height: 110,
                                                        fit: BoxFit.contain,
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
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 5, 0, 0),
                                                    child: Text(
                                                      'แซลมอน-โกรว์',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
                                                        color: FlutterFlowTheme
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
                                                      'โปรตีนสกัดจากปลาแซลมอนประกอบด้วยกรดอะมิโนที่ครบสมบูรณ์อุดมไปด้วยเปปไทด์และนิวคลีโอไทด์สูง โตดี',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
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
                                      width: MediaQuery.of(context).size.width,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Image.network(
                                                        'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2FFarm%20Highmune%20P.png?alt=media&token=cfdc3d71-4273-43bd-8dd8-29bb3cf9b81d',
                                                        width: 100,
                                                        height: 110,
                                                        fit: BoxFit.contain,
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
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 5, 0, 0),
                                                    child: Text(
                                                      'ฟาร์มไฮมูน พี',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
                                                        color: FlutterFlowTheme
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
                                                      'เสริมสร้างและกระตุ้นภูมิคุ้มกันของปลาแบบองค์รวม',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
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
                                      width: MediaQuery.of(context).size.width,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Image.network(
                                                        'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2FFarm%20Turbo%20Nil_.png?alt=media&token=8b40725c-9f92-475c-848d-60c7a321b981',
                                                        width: 100,
                                                        height: 110,
                                                        fit: BoxFit.contain,
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
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 5, 0, 0),
                                                    child: Text(
                                                      'ฟาร์มเทอร์โบ นิล',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
                                                        color: FlutterFlowTheme
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
                                                      'อาหารเสริมฟื้นฟูสภาพหลังการป่วยและเร่งการเจริญเติบโตก่อนจับขาย',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
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
                                      width: MediaQuery.of(context).size.width,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Image.network(
                                                        'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2FFarm%20Turbo%20Duk.png?alt=media&token=8939916f-31a9-4a50-8cee-4c96e19aa9a9',
                                                        width: 100,
                                                        height: 110,
                                                        fit: BoxFit.contain,
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
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 5, 0, 0),
                                                    child: Text(
                                                      'ฟาร์มเทอร์โบ ดุก',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
                                                        color: FlutterFlowTheme
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
                                                      'อาหารเสริมฟื้นฟูสภาพหลังการป่วยและเร่งการเจริญเติบโตก่อนจับขาย',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'PLSPRO001',
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
                                                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2FProduct%20Farmmin_P%20Non%20Background.png?alt=media&token=ec3a31b4-5abf-4130-81b8-40b00dcc3a12',
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
                                                        'ฟาร์มมิน พี',
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
                                                        'แร่ธาตุคีเลตเสริมวติะมินเพิ่มการดูดซึม\nรักษาสมดุลของแร่ธาตุสำหรับปลา',
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
                                  )
                                ],
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
