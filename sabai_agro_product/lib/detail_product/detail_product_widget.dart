import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


import 'package:sabai_agro_product/models/product_model.dart';
import 'package:sabai_agro_product/utility/my_constant.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';

class DetailProductWidget extends StatefulWidget {
  final ProductModel productModel;

  DetailProductWidget({
    Key key,
    @required this.productModel,
  }) : super(key: key);

  @override
  _DetailProductWidgetState createState() => _DetailProductWidgetState();
}

class _DetailProductWidgetState extends State<DetailProductWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  ProductModel productModel;
  PDFDocument pdfDocument;

  @override
  void initState() {
    super.initState();
    productModel = widget.productModel;
    loadPdf();
  }

  Future<void> loadPdf() async {
    try {
      var result = await PDFDocument.fromURL(productModel.pdf);
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
              productModel.name,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'บริษัท สบาย อะโกร บิสซินเนส แอนด์ อินโนเวชั่น จำกัด',
                                                style: MyConstant().h5Style(),
                                              ),
                                            ],
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 10, 0, 0),
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
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xAEFFFFFF),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child:
                                          Image.asset('assets/images/logo.png'),
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
                                                    productModel.name,
                                                    style:
                                                        MyConstant().th5Style(),
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
                                                      productModel.details,
                                                      style: MyConstant()
                                                          .h3Style(),
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
                                      // decoration: BoxDecoration(
                                      //   color: Color(0xFFEEEEEE),
                                      // ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.network(
                                            productModel.pic,
                                            width: 120,
                                            height: 120,
                                            fit: BoxFit.contain,
                                          ),
                                          // Text(
                                          //   'product pic',
                                          //   style: FlutterFlowTheme.bodyText1
                                          //       .override(
                                          //     fontFamily: 'PLSPRO001',
                                          //     fontSize: 18,
                                          //     useGoogleFonts: false,
                                          //   ),
                                          // )
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
              pdfDocument == null
                  ? SizedBox(
                    
                  )
                  : Expanded(
                      child: PDFViewer(
                    
                      document: pdfDocument,
                      scrollDirection: Axis.vertical,
                      showIndicator: false,
                      showNavigation: false,
                      showPicker: false,
                      
                    )
                    )

            ],
          ),
        ),
      ),
    );
  }
}
