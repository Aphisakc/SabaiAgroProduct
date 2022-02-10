import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselFishPage extends StatefulWidget {
  const CarouselFishPage({Key key}) : super(key: key);

  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselFishPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<String> imgList = [
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2Fanabas1.png?alt=media&token=0774352e-091b-4b24-8824-7020248b7126',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2Fnile1.png?alt=media&token=e08a2fb5-998a-417f-b427-dcfedebd3e71',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2Fnile2.png?alt=media&token=1d7a4b66-6fb3-4488-a4ad-627d7918a3ed',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2Fseabass1.png?alt=media&token=1e830b73-ffa8-48da-afda-f6b47a409be7',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/fish_product_page%2Ftabtim1.png?alt=media&token=2f0c2b89-139e-4978-94a2-9c085dbd0a01'
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
