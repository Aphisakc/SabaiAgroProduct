import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselShrimpPage extends StatefulWidget {
  const CarouselShrimpPage({Key key}) : super(key: key);

  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselShrimpPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<String> imgList = [
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/shrimp_product_page%2Fshrimp1.png?alt=media&token=fabd5888-0ba8-4b5b-9fe6-59eb62a5005f',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/shrimp_product_page%2Fshrimp2.png?alt=media&token=564088fa-0dab-463c-8c3a-db17c0e7c45e',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/shrimp_product_page%2Fshrimp3.png?alt=media&token=3faa8e86-92b3-4940-a136-8a8967f370e8',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/shrimp_product_page%2Fshrimp4.png?alt=media&token=26993bda-d200-4cb6-8192-a7b1cc002c4d',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/shrimp_product_page%2Fshrimp5.png?alt=media&token=456f6a5d-425e-4798-ada4-3f7e320a84b5'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: 120,
                autoPlay: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.4,
                onPageChanged: (index, carouselReson) {
                  setState(() {
                    _current = index;
                  });
                }
                // enlargeCenterPage: true

                ),
            items: imgList
                .map((item) => Container(
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            child: Stack(
                              children: <Widget>[
                                Image.network(item,
                                    fit: BoxFit.cover, width: 1000.0),
                                Positioned(
                                  bottom: 0.0,
                                  left: 0.0,
                                  right: 0.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromARGB(200, 0, 0, 0),
                                          Color.fromARGB(0, 0, 0, 0)
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                      ),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 20.0),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ))
                .toList(),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: imgList.asMap().entries.map((entry) {
          //     return GestureDetector(
          //       onTap: () => _controller.animateToPage(entry.key),
          //       child: Container(
          //         width: 5.0,
          //         height: 5.0,
          //         // margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
          //         decoration: BoxDecoration(
          //             shape: BoxShape.circle,
          //             color: (Theme.of(context).brightness == Brightness.dark
          //                     ? Colors.red
          //                     : Colors.white)
          //                 .withOpacity(_current == entry.key ? 0.9 : 0.4)),
          //       ),
          //     );
          //   }).toList(),
          // ),
        ],
      ),
    );
  }
}
