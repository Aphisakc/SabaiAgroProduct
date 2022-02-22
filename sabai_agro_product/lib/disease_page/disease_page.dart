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
                FungiWidget(),
                VirusWidget(),
                WaterWidget(),
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

class WaterWidget extends StatelessWidget {
  const WaterWidget({
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
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/water_isse_page%2Fdo1.png?alt=media&token=26e292c1-2669-45dd-a21d-59d3510b5913',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'ออกซิเจนต่ำ',
                           style: MyConstant().h22Style(),
                          ),
                          Text(
                            '( Low Dissolved Oxygen )',
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
                      padding: EdgeInsetsDirectional.fromSTEB(30, 5, 5, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'ของเสียสะสม',
                           style: MyConstant().h22Style(),
                          ),
                          Text(
                            '( N Waste )',
                           style: MyConstant().h21Style(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 5, 0, 5),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/water_isse_page%2Fnwaste1.png?alt=media&token=90661cb4-c697-437a-be4f-e657e1444e49',
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
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/water_isse_page%2Fpollution1.png?alt=media&token=743324f4-dce4-4057-860d-6b2faad78c60',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 5, 0, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'สารเคมีปนเปื้อน',
                           style: MyConstant().h22Style(),
                          ),
                          Text(
                            '( Water Pollution )',
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
                      padding: EdgeInsetsDirectional.fromSTEB(30, 5, 5, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'ฤดูน้ำไหลหลาก',
                            style: MyConstant().h22Style(),
                          ),
                          Text(
                            '( Fluctuate Level )',
                            style: MyConstant().h21Style(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 5, 0, 5),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/water_isse_page%2Ffluc1.png?alt=media&token=f8d22817-3a58-4016-b21e-91d2be79e10a',
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

class VirusWidget extends StatelessWidget {
  const VirusWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                      'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/virus_page%2Ftilv.png?alt=media&token=4f2334e1-acb7-490a-abdc-c82f756ccb5a',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 5, 0, 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'ไวรัสตายเดือน',
                        style: MyConstant().h22Style(),
                      ),
                      Text(
                        '( Tilapia Lake Virus )',
                        style: MyConstant().h21Style(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: FlutterFlowTheme.tertiaryColor,
                  width: 3,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                      child: Container(
                        width: 150,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(60),
                          border: Border.all(
                            color: FlutterFlowTheme.tertiaryColor,
                            width: 1,
                          ),
                        ),
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          'สาเหตุโน้มนำ',
                          style: MyConstant().h22Style(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'โรคอุบัติใหม่ในไทยมีรายงานการระบาคครั้งแรกในอิสราเอลเมื่อ 3 ปีก่อนเกิดจากการติดเชื้อไวรัส Tilapia Lake Virus วงจรการติดและกลการก่อโรคยังไม่ทราบแน่ชัดในประเทศไทยพบการติดเชื้อแล้วในปลานิลดำและปลานิลแดงและมีรายงานการระบาดไปทั่วโลกสร้างความเสียหายได้ 50-70% ภายใน 10วันอัตราการตายสูงขึ้นฤดูร้อนไม่พบการตายในปลาชนิดอื่นๆ (ปลาจีน ปลาตะเพียน)ที่เลี้ยงร่วมกัน',
                        style: MyConstant().h2Style(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/virus_page%2Ftilv11.png?alt=media&token=907b4ea9-7cfb-46c8-882a-5b984b8de346',
                                  width: 200,
                                  height: 150,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0),
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/virus_page%2Ftilv2.png?alt=media&token=b5fb0569-cfa5-43ea-8577-2257ffb407b6',
                                width: 200,
                                height: 150,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                      child: Container(
                        width: 150,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(60),
                          border: Border.all(
                            color: FlutterFlowTheme.tertiaryColor,
                            width: 1,
                          ),
                        ),
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          'อาการโดยทั่วไป',
                          style: MyConstant().h22Style(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        '     - ลูกปลาเล็กจะทยอยตาย พบอาการอ่อนแรง ตัวซีด ส่วนหัวตกเลือด ท้องบวมน้ำ มีเลือดออกในตา ตาอาจบวม มีแผลหลุมหรือรอยถลอกที่ผิว\n     - การตายจะเพิ่มขึ้นอย่างรวดเร็วภายใน 2 - 5 วัน จะตาย >50% หลังจากนั้นอัตราการตายจะค่อยๆลดลงและหยุดหลังจากตายวันแรก 7 - 15 วัน\n     - ไม่ตอบสนองต่อยาปฏิชีวนะ',
                        style: MyConstant().h2Style(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/virus_page%2Ftilv3.png?alt=media&token=d527a91a-2f0b-43f3-89dd-05805742fec3',
                                  width: 200,
                                  height: 150,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0),
                              child: Image.network(
                                'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/virus_page%2Ftilv4.png?alt=media&token=7eb190fb-11a8-44e8-b0fc-9d5560f659ae',
                                width: 200,
                                height: 150,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                      child: Container(
                        width: 120,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(60),
                          border: Border.all(
                            color: FlutterFlowTheme.tertiaryColor,
                            width: 1,
                          ),
                        ),
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          'การป้องกัน',
                          style: MyConstant().h22Style(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: Text(
                        'ไม่มีวิธีรักษาเนื่องจากเป็นเชื้อไวรัสจึงสามารถทำได้แค่ป้องกันไม่ให้เกิดโรคแต่เมื่อติดเชื้อแล้วต้องรักษาไปตามอาการที่ปรากฏ และจัดการฟาร์มดังนี้\n     - ลดอาหารลงเหลือ  1 มื้อในช่วงเช้า\n     - ผสมวิตามินรวมหรือวิตามินซีติดต่อกัน 7 วัน\n     - ตักปลาตายหรือใกล้ตายออกให้มากที่สุด     \n       นำมาทำลายบนฝั่ง\n     - แขวนเกลือ เปิดมุ้งกั้นอาหาร และเปิดระบบให้อากาศ\n     - เก็บตัวอย่างปลาป่วยและแจ้งนักวิชาการเพื่อตรจววิเคราะห์เชื้อ',
                        style: MyConstant().h2Style(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FungiWidget extends StatelessWidget {
  const FungiWidget({
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
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fungi_page%2Fsaproleg1.png?alt=media&token=3ce35ab5-c8cc-4168-853c-b54933a68c2c',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'เชื้อราปุยฝ้าย',
                            style: MyConstant().h22Style(),
                          ),
                          Text(
                            '( Saprolegnia sp., Achly sp. )',
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
                      padding: EdgeInsetsDirectional.fromSTEB(30, 5, 5, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'บราชิโอไมโครซิส',
                            style: MyConstant().h22Style(),
                          ),
                          Text(
                            '( Braciomicrosis sp. )',
                            style: MyConstant().h21Style(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(75, 5, 0, 5),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fungi_page%2Fbrachio1.png?alt=media&token=1a89dd9c-dec5-4bc9-b20b-03c2ba56191c',
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
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fungi_page%2Feus1.png?alt=media&token=95137b19-e98c-40d6-aefe-cc10dcd6c059',
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
                            'เชื้อ EUS',
                            style: MyConstant().h22Style(),
                          ),
                          Text(
                            '( Epizootic Ulcerative Syndrome )',
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
