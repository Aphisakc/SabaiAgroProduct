import 'package:sabai_agro_product/carousel_page/carousel_fish.dart';
import 'package:sabai_agro_product/carousel_page/carousel_index.dart';
import 'package:sabai_agro_product/carousel_page/carousel_shrimp.dart';
import 'package:sabai_agro_product/contact_page/contact_page_widget.dart';
import 'package:sabai_agro_product/widgets/product_page_widget.dart';
import 'package:sabai_agro_product/home_page/home_page_widget.dart';
import 'package:sabai_agro_product/utility/my_constant.dart';

import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class IndexPageWidget extends StatefulWidget {
  IndexPageWidget({Key key}) : super(key: key);

  @override
  _IndexPageWidgetState createState() => _IndexPageWidgetState();
}

class _IndexPageWidgetState extends State<IndexPageWidget>
    with TickerProviderStateMixin {
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Row(
          children: [
            Text('Index', style: MyConstant().h2Style()),
          ],
        ),
        backgroundColor: Color(0xFF039BE5),
        automaticallyImplyLeading: true,
        leading: FlutterFlowIconButton(
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
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0.05),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FBG01.jpg?alt=media&token=7f2b5be5-d83f-447c-a5df-de97cc60ed01',
                    ).image,
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(5, 16, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 10, 16),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/logo.png',
                                        width: 120,
                                        height: 120,
                                        fit: BoxFit.cover,
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'SABAI AGRO',
                                                style: MyConstant().h10Style(),
                                              )
                                            ],
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Stack(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'บริษัท สบาย อะโกร บิสซินเนส แอนด์ อินโนเวชั่น จำกัด',
                                                      style: MyConstant()
                                                          .h5Style(),
                                                    )
                                                  ],
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.11, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                5, 20, 0, 0),
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
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 0, 0),
                                                  child: Text(
                                                    'WE WILL GROW TOGETHER',
                                                    style:
                                                        MyConstant().h31Style(),
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
                    CarouselIndexPage(),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 20, 0, 0),
                          child: Text(
                            'ผลิตภัณฑ์คุณภาพ คู่เกษตรกรไทย',
                            style: MyConstant().h3Style(),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                            child: Text(
                              'เติบโตไปด้วยกัน',
                              style: MyConstant().th4Style(),
                            ),
                          )
                        ],
                      ),
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
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FBG02.jpg?alt=media&token=9cdccf48-2e5d-4ce3-b570-5222bbae0133',
                    ).image,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePageWidget()),
                                );
                              },
                              child: Container(
                                width:
                                    MediaQuery.of(context).size.width * 0.333,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                ),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HomePageWidget()),
                                    );
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Image.network(
                                        'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FiconPic%2FMenu%20Icon_01.png?alt=media&token=7150230d-473f-4528-bab7-a1e7d54d6341',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Text(
                                        'Home',
                                        style: MyConstant().h7Style(),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProductPageWidget(
                                      collectionFirebase: 'fish_product',
                                      titleGroup: 'กลุ่มสินค้าปลา',
                                      carouselWidget: CarouselFishPage(),
                                      iconWidget: Image.network('https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FiconPic%2FMenu%20Icon_02.png?alt=media&token=c54e9668-4cc9-4618-b188-e10f484cbbf6'),
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                width:
                                    MediaQuery.of(context).size.width * 0.333,
                                decoration: BoxDecoration(),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ProductPageWidget(
                                          collectionFirebase: 'fish_product',
                                          titleGroup: 'กลุ่มสินค้าปลา',
                                          carouselWidget: CarouselFishPage(),
                                          iconWidget: Image.network('https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FiconPic%2FMenu%20Icon_02.png?alt=media&token=c54e9668-4cc9-4618-b188-e10f484cbbf6'),
                                        ),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Image.network(
                                        'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FiconPic%2FMenu%20Icon_02.png?alt=media&token=c54e9668-4cc9-4618-b188-e10f484cbbf6',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.contain,
                                      ),
                                      Text(
                                        'กลุ่มสินค้าปลา',
                                        style: MyConstant().h7Style(),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProductPageWidget(
                                      collectionFirebase: 'shrimp_product',
                                      titleGroup: 'กลุ่มสินค้ากุ้ง',
                                      carouselWidget: CarouselShrimpPage(),
                                      iconWidget: Image.network('https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FiconPic%2FMenu%20Icon_03.png?alt=media&token=d6619658-5e17-4f4d-9898-c019244f7f85'),
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                width:
                                    MediaQuery.of(context).size.width * 0.333,
                                decoration: BoxDecoration(),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ProductPageWidget(
                                          collectionFirebase: 'shrimp_product',
                                          titleGroup: 'กลุ่มสินค้ากุ้ง',
                                          carouselWidget: CarouselShrimpPage(),
                                          iconWidget: Image.network('https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FiconPic%2FMenu%20Icon_03.png?alt=media&token=d6619658-5e17-4f4d-9898-c019244f7f85'),
                                        ),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Image.network(
                                        'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FiconPic%2FMenu%20Icon_03.png?alt=media&token=d6619658-5e17-4f4d-9898-c019244f7f85',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.contain,
                                      ),
                                      Text(
                                        'กลุ่มสินค้ากุ้ง',
                                        style: MyConstant().h7Style(),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.333,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.network(
                                    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FiconPic%2FMenu%20Icon_05.png?alt=media&token=c2d9d282-0c88-4699-85ab-1f54d209516a',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                  Text(
                                    'โรคสัตว์น้ำ',
                                    style: MyConstant().h7Style(),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.333,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.network(
                                    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FiconPic%2FMenu%20Icon_04.png?alt=media&token=64517724-b17c-44e8-955c-0dc2593e28e7',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                  Text(
                                    'โปรแกรมคำนวณ',
                                    style: MyConstant().h7Style(),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ContactPageWidget()),
                                );
                              },
                              child: Container(
                                width:
                                    MediaQuery.of(context).size.width * 0.333,
                                decoration: BoxDecoration(),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ContactPageWidget()),
                                    );
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Image.network(
                                        'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FiconPic%2FMenu%20Icon_06.png?alt=media&token=63884a2d-aa8d-4df0-9373-d53e859277a2',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.contain,
                                      ),
                                      Text(
                                        'ติดต่อเรา',
                                        style: MyConstant().h7Style(),
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
