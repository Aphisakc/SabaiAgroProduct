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
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2F%E0%B8%9E%E0%B8%B5%E0%B9%88%E0%B9%81%E0%B8%A1%E0%B9%89%E0%B8%A7_2.jpg?alt=media&token=f6c21b4c-49ef-4fb5-b3bf-2882ca138885',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIMG_0258.JPG?alt=media&token=b54eafe3-f950-43f7-90a2-c4a83d46e0d3',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIMG_0220.JPG?alt=media&token=e4f2a14e-0646-470c-8b42-8f2612401dd1',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIMG_0238.JPG?alt=media&token=a6c2ee85-2380-4355-a9e9-8c647e9cb41d',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIMG_0725.JPG?alt=media&token=3aa96b32-7dec-42f8-9dc6-aaec6f12e03b',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIMG_0245.JPG?alt=media&token=c8723473-5515-42b1-b6f2-f3f15fa7f44f',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/contact_page%2FIMG_0211.JPG?alt=media&token=77d1130a-0b43-45db-8a12-18aa7b64098c'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: 100,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.red
                              : Colors.white)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
