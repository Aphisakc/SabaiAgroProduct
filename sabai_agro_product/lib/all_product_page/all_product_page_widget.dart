import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AllProductPageWidget extends StatefulWidget {
  AllProductPageWidget({Key key}) : super(key: key);

  @override
  _AllProductPageWidgetState createState() => _AllProductPageWidgetState();
}

class _AllProductPageWidgetState extends State<AllProductPageWidget> {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
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
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
            Text(
              'สินค้าของเรา',
              style: FlutterFlowTheme.bodyText1.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.tertiaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w500,
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
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'PLSPRO001',
                                          color: FlutterFlowTheme.tertiaryColor,
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
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText1
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
                                    FontAwesomeIcons.shoppingBasket,
                                    color: Color(0xFF4EA6E8),
                                    size: 30,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 10, 0, 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'กลุ่มผลิตภัณฑ์คุณภาพ',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'PLSPRO001',
                                  color: FlutterFlowTheme.tertiaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: false,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0x00EEEEEE),
                            ),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.horizontal,
                              children: [
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Ftabtim1.png?alt=media&token=6a506725-f4c6-4b45-a996-f67d5e7d4c3d',
                                        ).image,
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fnile1.png?alt=media&token=886cb7b7-dd70-4d1d-bcd7-866c5a8a3e40',
                                        ).image,
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fduk1.png?alt=media&token=f8a62946-4a1a-4840-8a30-517f29baeeef',
                                        ).image,
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fanabas1.png?alt=media&token=2d0488ba-4f11-4eba-82ed-bbd936abc0b50/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fduk1.png?alt=media&token=f8a62946-4a1a-4840-8a30-517f29baeeef',
                                        ).image,
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fnile2.png?alt=media&token=5d45cf9b-6691-47a2-b8e9-d8d91aa5769e0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fseabass1.png?alt=media&token=f8282127-0614-448a-8898-687318db1be60/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fanabas1.png?alt=media&token=2d0488ba-4f11-4eba-82ed-bbd936abc0b50/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fduk1.png?alt=media&token=f8a62946-4a1a-4840-8a30-517f29baeeef',
                                        ).image,
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    width: 150,
                                    height: 0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fshrimp1.png?alt=media&token=cce4bd89-2f98-4f08-b4f3-55bf096e191f0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Ftabtim1.png?alt=media&token=6a506725-f4c6-4b45-a996-f67d5e7d4c3d',
                                        ).image,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
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
                height: MediaQuery.of(context).size.height * 0.67,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 10, 0, 10),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'กลุ่มสินค้าปลา',
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color: Color(0xFF035D6C),
                                textStyle: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.tertiaryColor,
                                  width: 2,
                                ),
                                borderRadius: 50,
                              ),
                              loading: _loadingButton1,
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional(0, 1),
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/all_product_page%2Fadditive.png?alt=media&token=7a1fd0ed-7270-4e2a-b973-2b9c688ffa3d',
                                            width: 165,
                                            height: 120,
                                            fit: BoxFit.contain,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 165,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Color(0x13000000),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xAE000000),
                                              )
                                            ],
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                              topLeft: Radius.circular(0),
                                              topRight: Radius.circular(0),
                                            ),
                                          ),
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Text(
                                              'กลุ่มอาหารเสริม',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Stack(
                                  alignment: AlignmentDirectional(0, 1),
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/all_product_page%2Fprobiotic.png?alt=media&token=47745798-162b-48f0-a1f0-937fa4610546',
                                            width: 165,
                                            height: 120,
                                            fit: BoxFit.contain,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 165,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Color(0x13000000),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xAE000000),
                                              )
                                            ],
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                              topLeft: Radius.circular(0),
                                              topRight: Radius.circular(0),
                                            ),
                                          ),
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Text(
                                              'กลุ่มจุลินทรีย์',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
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
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Stack(
                                    alignment: AlignmentDirectional(0, 1),
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.network(
                                              'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/all_product_page%2Fantibiotic.png?alt=media&token=1ffb3ea7-eb49-4d38-a47e-e7aef19436e8',
                                              width: 165,
                                              height: 120,
                                              fit: BoxFit.contain,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 165,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0x13000000),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0xAE000000),
                                                )
                                              ],
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                                topLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Text(
                                                'กลุ่มยาปฏิชีวนะ',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Stack(
                                    alignment: AlignmentDirectional(0, 1),
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.network(
                                              'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/all_product_page%2Fimmune.png?alt=media&token=cf23c338-5c0b-48ee-b597-1f2d20d9f086',
                                              width: 165,
                                              height: 120,
                                              fit: BoxFit.contain,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 165,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0x13000000),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0xAE000000),
                                                )
                                              ],
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                                topLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Text(
                                                'กลุ่มสร้างภูมิ คุมโรค',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
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
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 0, 0),
                                    child: Stack(
                                      alignment: AlignmentDirectional(0, 1),
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.network(
                                                'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/all_product_page%2Fdisinfectant.png?alt=media&token=99503a2c-3e81-459d-b4e4-2c22838c530e',
                                                width: 165,
                                                height: 120,
                                                fit: BoxFit.contain,
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 165,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: Color(0x13000000),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(0xAE000000),
                                                  )
                                                ],
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                  topLeft: Radius.circular(0),
                                                  topRight: Radius.circular(0),
                                                ),
                                              ),
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Text(
                                                  'กลุ่มยาฆ่าเชื้อ',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme
                                                        .tertiaryColor,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 10, 0, 10),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'กลุ่มสินค้ากุ้ง',
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color: Color(0xFF035D6C),
                                textStyle: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.tertiaryColor,
                                  width: 2,
                                ),
                                borderRadius: 50,
                              ),
                              loading: _loadingButton2,
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.35,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional(0, 1),
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/all_product_page%2Fadditive_s.png?alt=media&token=5912d130-6cdc-4d53-81ea-f01ab4006ff9',
                                            width: 165,
                                            height: 120,
                                            fit: BoxFit.contain,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 165,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Color(0x13000000),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xAE000000),
                                              )
                                            ],
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                              topLeft: Radius.circular(0),
                                              topRight: Radius.circular(0),
                                            ),
                                          ),
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Text(
                                              'กลุ่มอาหารเสริม',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Stack(
                                  alignment: AlignmentDirectional(0, 1),
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/all_product_page%2Fprobiotic_s.png?alt=media&token=85af1080-ad2d-4bdd-932e-dd25343ebb55',
                                            width: 165,
                                            height: 120,
                                            fit: BoxFit.contain,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 165,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Color(0x13000000),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xAE000000),
                                              )
                                            ],
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                              topLeft: Radius.circular(0),
                                              topRight: Radius.circular(0),
                                            ),
                                          ),
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Text(
                                              'กลุ่มจุลินทรีย์',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
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
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Stack(
                                    alignment: AlignmentDirectional(0, 1),
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.network(
                                              'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/all_product_page%2Fimmune_s.png?alt=media&token=3f179b0d-99a4-4265-9e98-4d550ea8f02f',
                                              width: 165,
                                              height: 120,
                                              fit: BoxFit.contain,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 165,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0x13000000),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0xAE000000),
                                                )
                                              ],
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                                topLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Text(
                                                'กลุ่มสร้างภูมิ คุมโรค',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Stack(
                                    alignment: AlignmentDirectional(0, 1),
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.network(
                                              'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/all_product_page%2Fdisinfectant_s.png?alt=media&token=775a5f2c-283f-463f-8c4d-fbde4f317fca',
                                              width: 165,
                                              height: 120,
                                              fit: BoxFit.contain,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 165,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0x13000000),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0xAE000000),
                                                )
                                              ],
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                                topLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Text(
                                                'กลุ่มยาฆ่าเชื้อ',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
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
    );
  }
}
