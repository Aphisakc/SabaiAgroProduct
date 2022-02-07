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
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Ftabtim1.png?alt=media&token=6a506725-f4c6-4b45-a996-f67d5e7d4c3d',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fnile1.png?alt=media&token=886cb7b7-dd70-4d1d-bcd7-866c5a8a3e40',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fduk1.png?alt=media&token=f8a62946-4a1a-4840-8a30-517f29baeeef',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fanabas1.png?alt=media&token=2d0488ba-4f11-4eba-82ed-bbd936abc0b5',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fseabass1.png?alt=media&token=f8282127-0614-448a-8898-687318db1be6',
    'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/index_page%2FcarouselPic%2Fnile2.png?alt=media&token=5d45cf9b-6691-47a2-b8e9-d8d91aa5769e'
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 5.0,
                  height: 5.0,
                  // margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
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
