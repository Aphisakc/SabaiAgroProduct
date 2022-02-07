import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultButtonWidget extends StatefulWidget {
  DefaultButtonWidget({Key key}) : super(key: key);

  @override
  _DefaultButtonWidgetState createState() => _DefaultButtonWidgetState();
}

class _DefaultButtonWidgetState extends State<DefaultButtonWidget> {
  bool _loadingButton = false;

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () {
        print('DefaultButton pressed ...');
      },
      text: 'WECOME',
      options: FFButtonOptions(
        width: 170,
        height: 45,
        color: Color(0xFF035D6C),
        textStyle: FlutterFlowTheme.subtitle2.override(
          fontFamily: 'Poppins',
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        borderSide: BorderSide(
          color: FlutterFlowTheme.tertiaryColor,
          width: 2,
        ),
        borderRadius: 20,
      ),
      loading: _loadingButton,
    );
  }
}
