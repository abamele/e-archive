import 'package:earsive/e-archive-folders/constant-folder/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constant-folder/colors.dart';

// void main() {
//   runApp(const MyApp());
// }
//
// final ZoomDrawerController z = ZoomDrawerController();
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ZoomDrawer(
//       controller: z,
//       borderRadius: 24,
//       style: DrawerStyle.style3,
//       showShadow: true,
//       openCurve: Curves.fastOutSlowIn,
//       slideWidth: MediaQuery.of(context).size.width * 0.65,
//       duration: const Duration(milliseconds: 500),
//       angle: 0.0,
//       mainScreen: const MainScreen(),
//       menuScreen: const MenuScreen(),
//     );
//   }
// }
//
// class MainScreen extends StatefulWidget {
//   const MainScreen({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {
//   int _counter = 0;
//   final _tween = Tween(begin: const Duration(hours: 1), end: Duration.zero,);
//
//   Future<void> addShared() async {
//     // Obtain shared preferences.
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setInt('counter', _counter);
//     setState(() {});
//   }
//
//   Future<int> getValue() async {
//     // Obtain shared preferences.
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getInt('counter') ?? 0;
//   }
//
//   void _incrementCounter() {
//     _counter++;
//     addShared();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white.withOpacity(0.9),
//       appBar: AppBar(
//         title: Text("Test App"),
//         leading: IconButton(
//           icon: const Icon(Icons.menu),
//           onPressed: () {
//             z.toggle!();
//           },
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             TweenAnimationBuilder<Duration>(
//               duration: const Duration(hours: 1),
//               tween: _tween,
//               builder: (_, Duration value, __) => Text(value.toString()),
//             ),
//             FutureBuilder(
//               future: getValue(),
//               builder: (context, snapshot) {
//                 if (snapshot.hasData) {
//                   return Text(
//                     snapshot.data.toString(),
//                     style: Theme.of(context).textTheme.headline4,
//                   );
//                 }
//                 return const Text('noData');
//               },
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
//
// class MenuScreen extends StatelessWidget {
//   const MenuScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Theme(
//       data: ThemeData.dark(),
//       child: const Scaffold(
//         backgroundColor: Colors.indigo,
//         body: Padding(
//           padding: EdgeInsets.only(left: 25),
//           child: Center(
//             child: Text(
//               'kkkk',
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

/*
* ---------------------------------------------------------
* */

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await EasyLocalization.ensureInitialized();
//
//   runApp(
//     EasyLocalization(
//       child: MyApp(),
//       path: 'assets/langs',
//       supportedLocales: MyApp.list,
//       saveLocale: true,
//       useOnlyLangCode: true,
//     ),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   static const list = [
//     Locale('en'),
//     Locale('ar'),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Zoom Drawer Demo',
//       onGenerateTitle: (context) => tr("app_name"),
//       debugShowCheckedModeBanner: false,
//       localizationsDelegates: context.localizationDelegates,
//       supportedLocales: context.supportedLocales,
//       locale: context.locale,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         accentColor: Colors.orange,
//       ),
//       home: ChangeNotifierProvider(
//         create: (_) => MenuProvider(),
//         child: HomeScreen(),
//       ),
//     );
//   }
// }

/*
* ---------------------------------------------------------
* */

final ZoomDrawerController z = ZoomDrawerController();

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: z,
      borderRadius: 24,
      style: DrawerStyle.defaultStyle,
      showShadow: true,
      openCurve: Curves.fastOutSlowIn,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      duration: const Duration(milliseconds: 500),
      angle: 0.0,
      menuBackgroundColor: blueColor,
      mainScreen: const Body(),
      menuScreen: Theme(
        data: ThemeData.dark(),
        child: Scaffold(
          backgroundColor: blueColor,
          body: Container(
            margin: EdgeInsets.only(
              top: 30,
            ),
            child: ListView(
              children: [
                DrawerHeader(
                    child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                            "assets/indir.jpg"),
                        radius: 40,
                      ),
                    ),
                    Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          child:
                              Text("ad soyad", style: TextStyle(fontSize: 22))),
                    )
                  ],
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.home, size: 20,),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Anasayfa', style: TextStyle(fontSize: 14),
                          // style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/home");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Row(
                      children: [
                        Icon(FontAwesomeIcons.listUl, size: 20,),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(
                            'GİB E-Arşiv Portal Faturaları',
                            style: TextStyle(fontSize: 12),
                            // style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/e-archive-bill");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Row(
                      children: [
                        Icon(FontAwesomeIcons.squarePlus, size: 20,),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(
                            'Yeni Fatura Oluşur',
                            style: TextStyle(fontSize: 14),
                            // style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/add-invoice");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.business, size: 20,),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(
                            'Karşi Firma Bilgisi',
                            style: TextStyle(fontSize: 14),
                            // style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/business-guide");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.home, size: 20,),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(
                            'Mal/Hizmet Bilgisi',
                            style: TextStyle(fontSize: 14),
                            // style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/service-info");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Row(
                      children: [
                        Icon(FontAwesomeIcons.creditCard, size: 20,),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(
                            'Not/IBAN Bilgisi', style: TextStyle(fontSize: 14),
                            // style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/not-iban-info");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Row(
                      children: [
                        Icon(FontAwesomeIcons.camera, size: 20,),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(
                            'Fatura Logo ve İmza Düzenle',
                            style: TextStyle(fontSize: 12),
                            // style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Row(
                      children: [
                        Icon(FontAwesomeIcons.arrowRightFromBracket, size: 20,),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Çıkış Yap', style: TextStyle(fontSize: 15),
                          // style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    onTap: (){
                      Navigator.pushNamed(context, "/login");
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late AnimationController controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 100),
    value: -1.0,
  );

  bool get isPanelVisible {
    final AnimationStatus status = controller.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TwoPanels(
        controller: controller,
      ),
    );
  }
}

class TwoPanels extends StatefulWidget {
  final AnimationController controller;

  const TwoPanels({Key? key, required this.controller}) : super(key: key);

  @override
  _TwoPanelsState createState() => _TwoPanelsState();
}

class _TwoPanelsState extends State<TwoPanels> with TickerProviderStateMixin {
  static const _headerHeight = 32.0;
  late TabController tabController = TabController(length: 3, vsync: this);

  Animation<RelativeRect> getPanelAnimation(BoxConstraints constraints) {
    final _height = constraints.biggest.height;
    final _backPanelHeight = _height - _headerHeight;
    const _frontPanelHeight = -_headerHeight;

    return RelativeRectTween(
      begin: RelativeRect.fromLTRB(
        0.0,
        _backPanelHeight,
        0.0,
        _frontPanelHeight,
      ),
      end: const RelativeRect.fromLTRB(0.0, 100, 0.0, 0.0),
    ).animate(
      CurvedAnimation(parent: widget.controller, curve: Curves.linear),
    );
  }

  Widget bothPanels(BuildContext context, BoxConstraints constraints) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            backgroundColor: blueColor,
            title: Center(child: const Text("Argede E-Arşiv Portal")),
            elevation: 0.0,
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                z.toggle!();
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              InkWell(
                                child: Card(
                                  elevation: 5.0,
                                  color: Colors.white,
                                  margin: EdgeInsets.only(top: 30),
                                  child: Container(
                                    width: context.dynamicWidth(0.40),
                                    height: context.dynamicHeight(0.15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            FontAwesomeIcons.squarePlus,
                                            size: 25,
                                            color: blueColor,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Yeni Fatura Ouşur",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff4F4F4F))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, "/add-invoice");
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              InkWell(
                                child: Card(
                                  elevation: 5.0,
                                  color: Colors.white,
                                  margin: EdgeInsets.only(top: 30),
                                  child: Container(
                                    width: context.dynamicWidth(0.40),
                                    height: context.dynamicHeight(0.15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.format_list_bulleted_outlined,
                                            size: 25,
                                            color: blueColor,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("E-Arşiv Faturalar",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff4F4F4F))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, "/e-archive-bill");
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              InkWell(
                                child: InkWell(
                                  child: Card(
                                    elevation: 5.0,
                                    color: Colors.white,
                                    margin: EdgeInsets.only(top: 30),
                                    child: Container(
                                      width: context.dynamicWidth(0.40),
                                      height: context.dynamicHeight(0.15),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.format_line_spacing_outlined,
                                              size: 25,
                                              color: blueColor,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                                "Size Kesilen Faturalar",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff4F4F4F))),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, "/invoice-issued");
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              InkWell(
                                child: Card(
                                  elevation: 5.0,
                                  color: Colors.white,
                                  margin: EdgeInsets.only(top: 30),
                                  child: Container(
                                    width: context.dynamicWidth(0.40),
                                    height: context.dynamicHeight(0.15),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.home,
                                            size: 25,
                                            color: blueColor,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("İptal/İtiraz Faturalar",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff4F4F4F))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: (){
                                  Navigator.pushNamed(context, "/demand-refused");
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              InkWell(
                                child: Card(
                                  elevation: 5.0,
                                  color: Colors.white,
                                  margin: EdgeInsets.only(top: 30),
                                  child: Container(
                                    width: context.dynamicWidth(0.40),
                                    height: context.dynamicHeight(0.15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.all_inbox,
                                            size: 30,
                                            color: blueColor,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Mal/Hizmet Bilgileri",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff4F4F4F))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, "/service-info");
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              InkWell(
                                child: Card(
                                  elevation: 5.0,
                                  color: Colors.white,
                                  margin: EdgeInsets.only(top: 30),
                                  child: Container(
                                    width: context.dynamicWidth(0.40),
                                    height: context.dynamicHeight(0.15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            FontAwesomeIcons.creditCard,
                                            size: 25,
                                            color: blueColor,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Not/IBAN Bilgileri",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff4F4F4F))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, "/not-iban-info");
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              InkWell( 
                                child: Card(
                                  elevation: 5.0,
                                  color: Colors.white,
                                  margin: EdgeInsets.only(top: 30),
                                  child: Container(
                                    width: context.dynamicWidth(0.40),
                                    height: context.dynamicHeight(0.15),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.business,
                                            size: 25,
                                            color: blueColor,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Karşi Firma Bilgileri",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff4F4F4F))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: (){
                                  Navigator.pushNamed(context, "/business-guide");
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              InkWell(
                                child: Card(
                                  elevation: 5.0,
                                  color: Colors.white,
                                  margin: EdgeInsets.only(top: 30),
                                  child: Container(
                                    width: context.dynamicWidth(0.40),
                                    height: context.dynamicHeight(0.15),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            FontAwesomeIcons.camera,
                                            size: 25,
                                            color: blueColor,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                              "Fatura Logo ve İmza Düzenle",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff4F4F4F))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: (){
                                  Navigator.pushNamed(context, "/edit-logo-or-signing");
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("")
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: bothPanels,
    );
  }
}
