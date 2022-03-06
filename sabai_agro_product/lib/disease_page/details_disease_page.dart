import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:sabai_agro_product/flutter_flow/flutter_flow_icon_button.dart';
import 'package:sabai_agro_product/flutter_flow/flutter_flow_theme.dart';
import 'package:sabai_agro_product/models/disease_model.dart';
import 'package:sabai_agro_product/utility/my_constant.dart';

class DetailDiseasePage extends StatefulWidget {

  final String diseaseGroup;
  final String collectionFirebase;


  const DetailDiseasePage({
    Key key,
    @required this.diseaseGroup,
    @required this.collectionFirebase,
  }) : super(key: key);

  

  @override
  _DetailDiseasePageState createState() => _DetailDiseasePageState();
}

class _DetailDiseasePageState extends State<DetailDiseasePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  String collectionFirebase;
  String diseaseGroup;

  PDFDocument pdfDocument;
  bool load = true;
  var diseaseModels = <DiseaseModel>[];

  @override
  void initState() {
  
    super.initState();

    collectionFirebase = widget.collectionFirebase;
    diseaseGroup = widget.diseaseGroup;

  
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              diseaseGroup,
              style: MyConstant().h2Style(),
            ),
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
      backgroundColor: Color(0xFF00000),
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
              
              pdfDocument == null
                  ? SizedBox()
                  : Expanded(
                      child: PDFViewer(
                      document: pdfDocument,
                      scrollDirection: Axis.vertical,
                      showIndicator: false,
                      showNavigation: false,
                      showPicker: false,
                    ))
            ],
          ),
        ),
      ),
    );
  }
}
