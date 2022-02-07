import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../welcome_page/welcome_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPageWidget extends StatefulWidget {
  SplashPageWidget({Key key}) : super(key: key);

  @override
  _SplashPageWidgetState createState() => _SplashPageWidgetState();
}

class _SplashPageWidgetState extends State<SplashPageWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
          child: InkWell(
            onTap: () async {
              await Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => WelcomePageWidget(),
                ),
                (r) => false,
              );
            },
            child: Image.network(
              'https://firebasestorage.googleapis.com/v0/b/sabaiagroproduct.appspot.com/o/splash_page%2Fsplash.png?alt=media&token=6cfd0eac-c406-4b02-9d8d-168e794a56c4',
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
          ).animated([animationsMap['imageOnPageLoadAnimation']]),
        ),
      ),
    );
  }
}
