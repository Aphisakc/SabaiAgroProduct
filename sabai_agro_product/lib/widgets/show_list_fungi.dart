import 'package:flutter/material.dart';

import 'package:sabai_agro_product/disease_page/details_disease_page.dart';
import 'package:sabai_agro_product/flutter_flow/flutter_flow_theme.dart';
import 'package:sabai_agro_product/models/disease_model.dart';
import 'package:sabai_agro_product/utility/my_constant.dart';

class ShowListFungi extends StatelessWidget {
  String urlImage;
  String nameDisease;
  String strainDisease;
   int index;
  DiseaseModel diseaseModel;

  ShowListFungi({
    
    Key key,
    
    @required this.urlImage,
    @required this.nameDisease,
    @required this.strainDisease,
    @required this.index,
    @required this.diseaseModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailDiseasePage(
            diseaseModel: diseaseModel,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 5, 10, 5),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      nameDisease,
                      style: MyConstant().h6Style(),
                    ),
                    Text(
                      strainDisease,
                      style: MyConstant().h21Style(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 5, 0, 5),
                child: Container(
                  width: 120,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    urlImage,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
