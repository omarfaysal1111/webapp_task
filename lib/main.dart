import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:webapp_task/HomePage.dart';
import 'package:webapp_task/product_card.dart';
import 'package:webapp_task/ui/block_wrapper.dart';
import 'package:webapp_task/ui/blocks.dart';
import 'package:webapp_task/ui/carousel/carousel.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // Your Firebase options file generated by the CLI
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  if (kIsWeb) {
    usePathUrlStrategy();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveBreakpoints.builder(
        child: Builder(builder: (context) {
          return ResponsiveScaledBox(
              width: ResponsiveValue<double?>(context,
                  defaultValue: null,
                  conditionalValues: [
                    const Condition.equals(name: 'MOBILE_SMALL', value: 480),
                  ]).value,
              child: ClampingScrollWrapper.builder(context, widget!));
        }),
        breakpoints: [
          const Breakpoint(start: 0, end: 480, name: 'MOBILE_SMALL'),
          const Breakpoint(start: 481, end: 850, name: MOBILE),
          const Breakpoint(start: 850, end: 1080, name: TABLET),
          const Breakpoint(start: 1081, end: double.infinity, name: DESKTOP),
        ],
      ),
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

List<Widget> blocks = [
  // MaxWidthBox(
  //   maxWidth: 1200,
  //   child: FittedBox(
  //     fit: BoxFit.fitWidth,
  //     alignment: Alignment.topCenter,
  //     child: Container(
  //         width: 1200,
  //         height: 640,
  //         alignment: Alignment.center,
  //         child: RepaintBoundary(child: Carousel())),
  //   ),
  // ),
  BlockWrapper(ItemPage()),
  const BlockWrapper(Features()),
  const BlockWrapper(FastDevelopment()),
  const BlockWrapper(BeautifulUI()),
  const BlockWrapper(NativePerformance()),
  const BlockWrapper(LearnFromDevelopers()),
  const BlockWrapper(WhoUsesFlutter()),
  // Disabled codelab block for performance.
  if (kIsWeb || Platform.isAndroid || Platform.isIOS)
    ResponsiveVisibility(
      hiddenConditions: [Condition.smallerThan(name: DESKTOP)],
      child: BlockWrapper(ItemPage()),
    ),
  const BlockWrapper(FlutterNewsRow()),
  const BlockWrapper(InstallFlutter()),
  const Footer(),
];
