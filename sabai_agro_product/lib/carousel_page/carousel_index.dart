import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselIndexPage extends StatefulWidget {
  const CarouselIndexPage({Key key}) : super(key: key);

  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselIndexPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<String> imgList = [
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fanabas1.png?alt=media&token=394ec8a1-474f-4dd6-b360-028868152803',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fduk1.png?alt=media&token=6292f08f-1a35-463f-a300-71750d9d1f23',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fnile1.png?alt=media&token=84d8d543-92a0-498b-ad45-cfb90382ff19',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fnile2.png?alt=media&token=cdb2ac3c-cf38-4c52-9def-fdaa230c0469',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fseabass1.png?alt=media&token=e82e8d72-5923-457e-9f35-b474bdef64f1',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fshrimp1.png?alt=media&token=902e3d31-e197-4f39-9bc3-60678512731f',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Ftabtim1.png?alt=media&token=17f42424-e331-4af3-8b8a-3eea3a44e553'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: 150,
                autoPlay: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.5,
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
          //         width: 8.0,
          //         height: 8.0,
          //         margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
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
