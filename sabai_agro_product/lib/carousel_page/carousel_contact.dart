import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselContactPage extends StatefulWidget {
  const CarouselContactPage({Key key}) : super(key: key);

  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselContactPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<String> imgList = [
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIMG_0211.png?alt=media&token=65c548fe-56e6-45d0-acaf-075a89c3dba4',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIMG_0220.png?alt=media&token=51e53e4e-90fe-4d1d-94cc-c21b178d019e',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIMG_0238.png?alt=media&token=9dc86c61-53d7-48cc-8ac1-03b1b160020f',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIMG_0245.png?alt=media&token=c653f158-d2aa-459c-8965-3b53e0927f01',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIMG_0258.png?alt=media&token=795266ea-5ce9-42df-a365-1c7bca9d1bdf',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIMG_0725.png?alt=media&token=a15c8b38-5a87-4745-839c-2b627f73914d',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIMG_0726.png?alt=media&token=3686604a-f800-477f-b4f5-e94b33c38b57'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: 130,
                autoPlay: true,
                aspectRatio: 1.5,
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
