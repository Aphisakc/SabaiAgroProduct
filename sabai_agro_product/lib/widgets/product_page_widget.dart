import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:sabai_agro_product/models/product_model.dart';
import 'package:sabai_agro_product/utility/my_constant.dart';
import 'package:sabai_agro_product/widgets/show_list_product.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';

class ProductPageWidget extends StatefulWidget {
  final String collectionFirebase;
  final String titleGroup;
  final Widget carouselWidget;
  final Widget iconWidget;

  ProductPageWidget({
    Key key,
    @required this.collectionFirebase,
    @required this.titleGroup,
    @required this.carouselWidget,
    @required this.iconWidget,
  }) : super(key: key);

  @override
  _ProductPageWidgetState createState() => _ProductPageWidgetState();
}

class _ProductPageWidgetState extends State<ProductPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  bool load = true;
  var productModels = <ProductModel>[];
  String collectionFirebase;
  String titlegroup;
  Widget carouselWidget;
  Widget iconWidget;

  @override
  void initState() {
    super.initState();

    collectionFirebase = widget.collectionFirebase;
    titlegroup = widget.titleGroup;
    // titlegroup = 'กลุ่มผลิตภัณฑ์ สำหรับปลา';
    carouselWidget = widget.carouselWidget;
    iconWidget = widget.iconWidget;

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
    return Scaffold(
      key: scaffoldKey,
      appBar: newAppBar(context),
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
                newAboutCompany(context),
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
                              child: load
                                  ? Center(child: CircularProgressIndicator())
                                  : ListView.builder(
                                      itemCount: productModels.length,
                                      itemBuilder: (context, index) =>
                                          ShowListProduct(
                                        urlImage: productModels[index].pic,
                                        nameProduct: productModels[index].name,
                                        detailsProduct:
                                            productModels[index].details,
                                        index: index,
                                        productModel: productModels[index],
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

  Container newAboutCompany(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.network(
            'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2Fbg03.png?alt=media&token=f4cd132c-7b00-471e-9a90-99a22cdf8c57',
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
                  padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'บริษัท สบาย อะโกร บิสซินเนส แอนด์ อินโนเวชั่น จำกัด',
                                      style: MyConstant().h5Style(),
                                    )
                                  ],
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Text(
                                      '_________________________________________',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
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
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          // color: Color(0xAEFFFFFF),
                          shape: BoxShape.circle,
                        ),
                        child: iconWidget,
                          
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 10, 0, 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        titlegroup,
                        style: MyConstant().th4Style(),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color(0x00EEEEEE),
                      ),
                      child: carouselWidget),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  AppBar newAppBar(BuildContext context) {
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
