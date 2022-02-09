import 'package:flutter/material.dart';

import 'package:sabai_agro_product/detail_product/detail_product_widget.dart';
import 'package:sabai_agro_product/models/product_model.dart';
import 'package:sabai_agro_product/utility/my_constant.dart';

class ShowListProduct extends StatelessWidget {
  String urlImage;
  String nameProduct;
  String detailsProduct;
  int index;
  ProductModel productModel;

  ShowListProduct({
    Key key,
    @required this.urlImage,
    @required this.nameProduct,
    @required this.detailsProduct,
    @required this.index,
    @required this.productModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailProductWidget(productModel: productModel,),
          ),
        );
      },
      child: SizedBox(
        // clipBehavior: Clip.antiAliasWithSaveLayer,
        // color: Color(0xFFF5F5F5),
        // elevation: 2,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(12),
        // ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 120,
          decoration: BoxDecoration(
            color: index % 2 == 0 ? Colors.white : Colors.grey[300],
          ),
          child: InkWell(
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailProductWidget(productModel: productModel,),
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
                        color: index % 2 == 0
                            ? MyConstant.listviewDarkColor
                            : MyConstant.listviewLightColor,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.network(
                              urlImage,
                              width: 100,
                              height: 105,
                              fit: BoxFit.contain,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
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
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 10, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 5, 0, 0),
                          child: Text(
                            nameProduct,
                            style: MyConstant().h2blueStyle(),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            detailsProduct,
                            style: MyConstant().h8StyleShowlist(),
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
