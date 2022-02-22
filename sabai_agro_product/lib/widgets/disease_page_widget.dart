
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sabai_agro_product/models/product_model.dart';
import 'package:sabai_agro_product/utility/my_constant.dart';
import 'package:sabai_agro_product/widgets/show_list_product.dart';

class TabBarWidget extends StatefulWidget {

  final String collectionFirebase;
  const TabBarWidget({ Key key,

  @required this.collectionFirebase,
  
   }) : super(key: key);

  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {



   bool load = true;
  var productModels = <ProductModel>[];
  String collectionFirebase;

  @override
  void initState() {
    super.initState();

  

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
    return DefaultTabController( length: 5,
      child: Scaffold(
        appBar: AppBar(
          actions: [
          ],
          
          bottom: TabBar(
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
          ]
          ),

          



        ),

        body: Column(children: [
          Expanded(child: Container(
            
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
                  
          ))
        ],
          
        ),

    )
    
      
    );
  }
}