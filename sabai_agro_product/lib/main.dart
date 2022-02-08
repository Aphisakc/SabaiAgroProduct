import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sabai_agro_product/example/head_tab.dart';

import 'package:sabai_agro_product/welcome_page/welcome_page_widget.dart';

import 'flutter_flow/flutter_flow_theme.dart';
import 'home_page/home_page_widget.dart';
import 'widgets/product_page_widget.dart';
import 'shrimp_product_page/shrimp_product_page_widget.dart';
import 'contact_page/contact_page_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sabai Agro Product',
      // localizationsDelegates: [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(primarySwatch: Colors.blue),
      home: WelcomePageWidget(),
    );
  }
}

// class NavBarPage extends StatefulWidget {
//   NavBarPage({Key key, this.initialPage}) : super(key: key);

//   final String initialPage;

//   @override
//   _NavBarPageState createState() => _NavBarPageState();
// }

// /// This is the private State class that goes with NavBarPage.
// class _NavBarPageState extends State<NavBarPage> {
//   String _currentPage = 'HomePage';

//   @override
//   void initState() {
//     super.initState();
//     _currentPage = widget.initialPage ?? _currentPage;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final tabs = {
//       'HomePage': HomePageWidget(),
//       'FishProductPage': FishProductPageWidget(),
//       'ShrimpProductPage': ShrimpProductPageWidget(),
//       'ContactPage': ContactPageWidget(),
//     };
//     return Scaffold(
//       body: tabs[_currentPage],
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.home_sharp,
//               size: 24,
//             ),
//             label: 'Home',
//             tooltip: '',
//           ),
//           BottomNavigationBarItem(
//             icon: FaIcon(
//               FontAwesomeIcons.fish,
//               size: 24,
//             ),
//             label: 'กลุ่มสินค้าปลา',
//             tooltip: '',
//           ),
//           BottomNavigationBarItem(
//             icon: FaIcon(
//               FontAwesomeIcons.shoppingCart,
//             ),
//             label: 'กลุ่มสินค้ากุ้ง',
//             tooltip: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.supervisor_account_sharp,
//               size: 24,
//             ),
//             label: 'ติดต่อเรา',
//             tooltip: '',
//           )
//         ],
//         backgroundColor: FlutterFlowTheme.primaryColor,
//         currentIndex: tabs.keys.toList().indexOf(_currentPage),
//         selectedItemColor: FlutterFlowTheme.tertiaryColor,
//         unselectedItemColor: Color(0x8A000000),
//         onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
//         showSelectedLabels: true,
//         showUnselectedLabels: true,
//         type: BottomNavigationBarType.fixed,
//       ),
//     );
//   }
// }
