import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sabai_agro_product/flutter_flow/flutter_flow_widgets.dart';
import 'package:sabai_agro_product/models/product_model.dart';
import 'package:sabai_agro_product/utility/my_constant.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../utility/my_constant.dart';

class DiseasePageWidget extends StatefulWidget {
  final String titleGroup;

  final String collectionFirebase;

  DiseasePageWidget({
    Key key,
    @required this.titleGroup,
    @required this.collectionFirebase,
  }) : super(key: key);

  @override
  _DiseasePageWidgetState createState() => _DiseasePageWidgetState();
}

class _DiseasePageWidgetState extends State<DiseasePageWidget>
    with TickerProviderStateMixin {
  get scaffoldKey => GlobalKey<ScaffoldState>();

  String titlegroup;

  bool load = true;
  var productModels = <ProductModel>[];
  String collectionFirebase;

  @override
  void initState() {
    super.initState();

    titlegroup = widget.titleGroup;

    collectionFirebase = widget.collectionFirebase;

    readFishProduct();
  }

  Future<void> readFishProduct() async {
    if (productModels.isNotEmpty) {
      productModels.clear();
    }
    await FirebaseFirestore.instance
        .collection(collectionFirebase)
        .get()
        .then((value) {
      for (var item in value.docs) {
        ProductModel model = ProductModel.fromMap(item.data());
        print('name = ${model.name}');
        setState(() {
          load = false;
          productModels.add(model);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 5, vsync: this);

    return Scaffold(
      key: scaffoldKey,
      appBar: appBar(context),
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          headCompany(context),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Container(
              child: TabBar(
                  controller: _tabController,
                  labelPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  isScrollable: true,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFF039BE5),
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.white, width: 2)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Text(
                              'แบคทีเรีย',
                              style: MyConstant().h3Style(),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.white, width: 2)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Text(
                              'ปรสิตภายนอก',
                              style: MyConstant().h3Style(),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.white, width: 2)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Text(
                              'เชื้อรา',
                              style: MyConstant().h3Style(),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.white, width: 2)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Text(
                              'ไวรัส',
                              style: MyConstant().h3Style(),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.white, width: 2)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Text(
                              'คุณภาพน้ำ',
                              style: MyConstant().h3Style(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          Expanded(
            child: Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
              child: TabBarView(controller: _tabController, children: <Widget>[
                BacWidget(),
                ParasiteWidget(),

                Text('เชื้อรา'),
                Text('ไวรัส'),
                Text('คุณภาพน้า'),
              ]),
            ),
          )
        ]),
      ),
    );
  }

  Container headCompany(BuildContext context) {
    return Container(
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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(5, 16, 0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 110,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
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
                            style: MyConstant().h10Style(),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'บริษัท สบาย อะโกร บิสซินเนส แอนด์ อินโนเวชั่น จำกัด',
                                  style: MyConstant().h5Style(),
                                )
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.11, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 20, 0, 0),
                                child: Text(
                                  '_________________________________________',
                                  style: FlutterFlowTheme.bodyText1.override(
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
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
                              child: Text(
                                'WE WILL GROW TOGETHER',
                                style: MyConstant().h31Style(),
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
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Text(titlegroup, style: MyConstant().h2Style()),
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
    );
  }
}

class ParasiteWidget extends StatelessWidget {
  const ParasiteWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'สังเกตุเห็นได้ด้วยตาเปล่า',
                    options: FFButtonOptions(
                      width: 220,
                      height: 30,
                      color: Colors.black,
                      textStyle: MyConstant().h22Style(),
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.tertiaryColor,
                        width: 1,
                      ),
                      borderRadius: 20,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(0),
                  ),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.tertiaryColor,
                    width: 3,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 5, 5),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/parasite_page%2Fargulus1.png?alt=media&token=8bf731ef-63b3-4a92-b162-e6531fde66bc',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 5, 0, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'เห็บปลา',
                            style: MyConstant().h22Style(),
                          ),
                          Text(
                            '( Argulus spp. )',
                            style: MyConstant().h21Style(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(0),
                  ),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.tertiaryColor,
                    width: 3,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 5, 5),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/parasite_page%2Fisopod1.png?alt=media&token=33b557ce-221d-4993-a62e-23ed2f6ee951',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 5, 0, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'หมัดปลา,เห็บสายฟ้า',
                            style: MyConstant().h22Style(),
                          ),
                          Text(
                            '( Isopod )',
                           style: MyConstant().h21Style(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(0),
                  ),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.tertiaryColor,
                    width: 3,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 5, 5),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/parasite_page%2FLernaea1.png?alt=media&token=a3589393-2d5d-4e1a-92b0-7a2b91d4525a',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 5, 0, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'หนอนสมอ',
                            style: MyConstant().h22Style(),
                          ),
                          Text(
                            '( Lernaea spp. )',
                            style: MyConstant().h21Style(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'สังเกตุเห็นได้ภายใต้กล้องจุลทรรศน์',
                    options: FFButtonOptions(
                      width: 300,
                      height: 30,
                      color: Colors.black,
                      textStyle:MyConstant().h22Style(),
                        
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.tertiaryColor,
                        width: 1,
                      ),
                      borderRadius: 20,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(60),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(60),
                  ),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.tertiaryColor,
                    width: 3,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 5, 5, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'เห็บระฆัง',
                           style: MyConstant().h22Style(),
                          ),
                          Text(
                            '( Trichodina spp. )',
                           style: MyConstant().h21Style(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 5, 0, 5),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/parasite_page%2Ftricho1.png?alt=media&token=f4014648-131b-4a17-82c7-f2a5012dc3cd',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(60),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(60),
                  ),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.tertiaryColor,
                    width: 3,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 5, 5, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'ปลิงใส',
                            style: MyConstant().h22Style(),
                          ),
                          Text(
                            '( Dactylogylus spp. )',
                            style: MyConstant().h21Style(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 5, 0, 5),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/parasite_page%2Fdactyrogyrus1.png?alt=media&token=23c08352-d087-471e-92a6-8e330c73718a',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(60),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(60),
                  ),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.tertiaryColor,
                    width: 3,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 5, 5, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'จุดขาว',
                            style: MyConstant().h22Style(),
                          ),
                          Text(
                            '( Ichthyophthirius sp. )',
                           style: MyConstant().h21Style(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 5, 0, 5),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/parasite_page%2Ficthy1.png?alt=media&token=b594d773-1c98-4c62-8a5e-920ecf007c5d',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(60),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(60),
                  ),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.tertiaryColor,
                    width: 3,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 5, 5, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'โรค Epitheliocystis spp.',
                            style: MyConstant().h22Style(),
                          ),
                          Text(
                            'โรค Zoothamnium spp.',
                            style: MyConstant().h21Style(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 5),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/parasite_page%2Fzoo1.png?alt=media&token=2c407c6c-ec8c-469a-a16b-f7c2ffa947ad',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(60),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(60),
                  ),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.tertiaryColor,
                    width: 3,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 5, 5, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'โรคสนิมเหล็ก',
                            style: MyConstant().h22Style(),
                          ),
                          Text(
                            '( Oodinium sp. )',
                           style: MyConstant().h21Style(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 5, 0, 5),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/parasite_page%2Foodinium1.png?alt=media&token=e1397321-cb98-44e6-afdd-ac0a9fb07b99',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BacWidget extends StatelessWidget {
  const BacWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(0),
                  ),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.tertiaryColor,
                    width: 3,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 5, 5),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/disease_page%2Fstrep1.png?alt=media&token=763e2850-45c1-43ef-8ad6-0dd959ab11b1',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'โรคตาโปน ว่ายน้ำควงสว่าน',
                            style: MyConstant().h22Style(),
                          ),
                          Text(
                            'เชื้อก่อโรค : สเตร๊ปโตค๊อกคัส',
                            style: MyConstant().h21Style(),
                          ),
                          Text(
                            '( Streptococcus sp. )',
                            style: MyConstant().h21Style(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(60),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(60),
                  ),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.tertiaryColor,
                    width: 3,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 5, 5, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'โรคท้องบวม กกหูบวม ตกเลือด',
                            style: MyConstant().h22Style(),
                          ),
                          Text(
                            'เชื้อก่อโรค : แอโรโมนาส',
                            style: MyConstant().h21Style(),
                          ),
                          Text(
                            '( Aeromonas sp. )',
                            style: MyConstant().h21Style(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/disease_page%2Faero1.png?alt=media&token=93c75667-e705-4114-8efa-580b1d09869e',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(0),
                  ),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.tertiaryColor,
                    width: 3,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 5, 5),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/disease_page%2Fflavo1.png?alt=media&token=7c68bda7-3e42-4848-b9c4-e297add79a5d',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'โรคตัวด่าง ตัวเปื่อย เหงือกเน่า',
                            style: MyConstant().h22Style(),
                          ),
                          Text(
                            'เชื้อก่อโรค : ฟลาโวแบคทีเรี่ยม',
                            style: MyConstant().h21Style(),
                          ),
                          Text(
                            '(Flavobacterium columnaris. )',
                            style: MyConstant().h21Style(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(60),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(60),
                  ),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.tertiaryColor,
                    width: 3,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 5, 5, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'โรคฟรานซิสเซลล่า',
                            style: MyConstant().h22Style(),
                          ),
                          Text(
                            'เชื้อก่อโรค : ฟรานซิสเซลล่า',
                            style: MyConstant().h21Style(),
                          ),
                          Text(
                            '( Francissiella sp. )',
                            style: MyConstant().h21Style(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 5, 0, 5),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/disease_page%2Ffrancis1.png?alt=media&token=b30a9f39-9a9b-4e7e-b5ce-5f7846b019cf',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(0),
                  ),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.tertiaryColor,
                    width: 3,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 5, 5),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/disease_page%2Fedward1.png?alt=media&token=b63ff262-542a-4d82-bdeb-b30a8147cfb4',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'โรคหัวเป็นหลุ่ม ลอยหัว ว่ายควง',
                            style: MyConstant().h22Style(),
                          ),
                          Text(
                            'เชื้อก่อโรค : เอ็ดเวิร์ดเซลล่า',
                            style: MyConstant().h21Style(),
                          ),
                          Text(
                            '( Edwardsiella ictaluri )',
                            style: MyConstant().h21Style(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}