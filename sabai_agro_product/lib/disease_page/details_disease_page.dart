import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';

import 'package:sabai_agro_product/flutter_flow/flutter_flow_icon_button.dart';
import 'package:sabai_agro_product/flutter_flow/flutter_flow_theme.dart';
import 'package:sabai_agro_product/models/disease_model.dart';
import 'package:sabai_agro_product/utility/my_constant.dart';

class DetailDiseasePage extends StatefulWidget {
  final DiseaseModel diseaseModel;

 

  DetailDiseasePage({
    Key key,
    @required this.diseaseModel,
   
  }) : super(key: key);

  @override
  _DetailDiseasePageState createState() => _DetailDiseasePageState();
}

class _DetailDiseasePageState extends State<DetailDiseasePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  DiseaseModel diseaseModel;

  

  PDFDocument pdfDocument;
  bool load = true;
  var diseaseModels = <DiseaseModel>[];

  @override
  void initState() {
    super.initState();

   
    diseaseModel = widget.diseaseModel;
    loadPdf();
  }

    Future<void> loadPdf() async {
    try {
      var result = await PDFDocument.fromURL(diseaseModel.pdf);
      // var result = await PDFDocument.fromURL(MyConstant.testPdf);
      setState(() {
        pdfDocument = result;
      });
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              diseaseModel.group,
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
        child: Column(
          children: [
            Align(
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
                              'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2Fbg03.png?alt=media&token=f4cd132c-7b00-471e-9a90-99a22cdf8c57',
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 10, 16, 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 0),
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
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            pdfDocument == null
                  ? SizedBox(
                    
                  )
                  : Expanded(
                    
                      child: Container(
                        child: PDFViewer(
                    
                        document: pdfDocument,
                        scrollDirection: Axis.vertical,
                        showIndicator: false,
                        showNavigation: false,
                        showPicker: false,
                        
                    ),
                      )
                    )
          ],
        ),
      ),
    );
  }
}
