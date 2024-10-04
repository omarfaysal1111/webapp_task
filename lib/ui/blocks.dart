import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:universal_io/io.dart';
import 'package:video_player/video_player.dart';
import 'package:webapp_task/components/colors.dart';
import 'package:webapp_task/components/icons.dart';
import 'package:webapp_task/components/spacing.dart';
import 'package:webapp_task/components/typography.dart';
import 'package:webapp_task/utils/utils.dart';
import 'package:webview_flutter/webview_flutter.dart';

// class WebsiteMenuBar extends StatelessWidget {
//   const WebsiteMenuBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const Color navLinkColor = Color(0xFF6E7274);
//     return Container(
//       height: 66,
//       decoration: const BoxDecoration(color: Colors.white, boxShadow: [
//         BoxShadow(color: Color(0x1A000000), offset: Offset(0, 2), blurRadius: 4)
//       ]),
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       child: Row(
//         children: [
//           const Padding(
//               padding: EdgeInsets.only(right: 16),
//               child: Icon(Icons.menu, color: textPrimary, size: 28)),
//           MouseRegion(
//             cursor: SystemMouseCursors.click,
//             child: GestureDetector(
//               onTap: () =>
//                   Navigator.of(context).popUntil((route) => route.isFirst),
//               child: Padding(
//                 padding: const EdgeInsets.fromLTRB(0, 5, 16, 5),
//                 child: Image.asset("assets/images/flutter_logo_text.png",
//                     height: 37, fit: BoxFit.contain),
//               ),
//             ),
//           ),
//           const Spacer(),
//           ResponsiveVisibility(
//             visible: false,
//             visibleConditions: const [Condition.largerThan(name: MOBILE)],
//             child: MouseRegion(
//               cursor: SystemMouseCursors.click,
//               child: GestureDetector(
//                 onTap: () => openUrl("https://flutter.dev/docs"),
//                 child: const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 16),
//                   child: Text("Docs",
//                       style: TextStyle(
//                           fontSize: 16,
//                           color: navLinkColor,
//                           fontFamily: fontFamily)),
//                 ),
//               ),
//             ),
//           ),
//           ResponsiveVisibility(
//             visible: false,
//             visibleConditions: const [Condition.largerThan(name: MOBILE)],
//             child: MouseRegion(
//               cursor: SystemMouseCursors.click,
//               child: GestureDetector(
//                 onTap: () => openUrl("https://flutter.dev/showcase"),
//                 child: const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 16),
//                   child: Text("Showcase",
//                       style: TextStyle(
//                           fontSize: 16,
//                           color: navLinkColor,
//                           fontFamily: fontFamily)),
//                 ),
//               ),
//             ),
//           ),
//           ResponsiveVisibility(
//             visible: false,
//             visibleConditions: const [Condition.largerThan(name: MOBILE)],
//             child: MouseRegion(
//               cursor: SystemMouseCursors.click,
//               child: GestureDetector(
//                 onTap: () => openUrl("https://flutter.dev/community"),
//                 child: const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 16),
//                     child: Text("Community",
//                         style: TextStyle(
//                             fontSize: 16,
//                             color: navLinkColor,
//                             fontFamily: fontFamily))),
//               ),
//             ),
//           ),
//           const ResponsiveVisibility(
//             visible: false,
//             visibleConditions: [Condition.largerThan(name: MOBILE)],
//             child: MouseRegion(
//               cursor: SystemMouseCursors.click,
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 18),
//                 child: ImageIcon(
//                     AssetImage("assets/images/icon_search_64x.png"),
//                     color: navLinkColor,
//                     size: 24),
//               ),
//             ),
//           ),
//           MouseRegion(
//             cursor: SystemMouseCursors.click,
//             child: GestureDetector(
//               onTap: () => openUrl('https://twitter.com/flutterdev'),
//               child: const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 8),
//                 child: ImageIcon(
//                     AssetImage("assets/images/icon_twitter_64x.png"),
//                     color: navLinkColor,
//                     size: 24),
//               ),
//             ),
//           ),
//           MouseRegion(
//             cursor: SystemMouseCursors.click,
//             child: GestureDetector(
//               onTap: () => openUrl('https://www.youtube.com/flutterdev'),
//               child: const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 8),
//                 child: ImageIcon(
//                     AssetImage("assets/images/icon_youtube_64x.png"),
//                     color: navLinkColor,
//                     size: 24),
//               ),
//             ),
//           ),
//           MouseRegion(
//             cursor: SystemMouseCursors.click,
//             child: GestureDetector(
//               onTap: () => openUrl('https://github.com/flutter'),
//               child: const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 8),
//                 child: ImageIcon(
//                     AssetImage("assets/images/icon_github_64x.png"),
//                     color: navLinkColor,
//                     size: 24),
//               ),
//             ),
//           ),
//           ResponsiveVisibility(
//             visible: false,
//             visibleConditions: const [Condition.largerThan(name: MOBILE)],
//             child: Padding(
//               padding: const EdgeInsets.only(left: 8, right: 0),
//               child: TextButton(
//                 onPressed: () =>
//                     openUrl("https://flutter.dev/docs/get-started/install"),
//                 style: ButtonStyle(
//                     backgroundColor: WidgetStateProperty.all<Color>(primary),
//                     overlayColor: WidgetStateProperty.resolveWith<Color>(
//                       (Set<WidgetState> states) {
//                         if (states.contains(WidgetState.hovered)) {
//                           return buttonPrimaryDark;
//                         }
//                         if (states.contains(WidgetState.focused) ||
//                             states.contains(WidgetState.pressed)) {
//                           return buttonPrimaryDarkPressed;
//                         }
//                         return primary;
//                       },
//                     ),
//                     // Shape sets the border radius from default 3 to 0.
//                     shape: WidgetStateProperty.resolveWith<OutlinedBorder>(
//                       (Set<WidgetState> states) {
//                         if (states.contains(WidgetState.focused) ||
//                             states.contains(WidgetState.pressed)) {
//                           return const RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(0)));
//                         }
//                         return const RoundedRectangleBorder(
//                             borderRadius: BorderRadius.all(Radius.circular(0)));
//                       },
//                     ),
//                     padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
//                         const EdgeInsets.symmetric(
//                             vertical: 22, horizontal: 28)),
//                     // Side adds pressed highlight outline.
//                     side: WidgetStateProperty.resolveWith<BorderSide>(
//                         (Set<WidgetState> states) {
//                       if (states.contains(WidgetState.focused) ||
//                           states.contains(WidgetState.pressed)) {
//                         return const BorderSide(
//                             width: 3, color: buttonPrimaryPressedOutline);
//                       }
//                       // Transparent border placeholder as Flutter does not allow
//                       // negative margins.
//                       return const BorderSide(width: 3, color: Colors.white);
//                     })),
//                 child: Text(
//                   "Get started",
//                   style: buttonTextStyle.copyWith(
//                       fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Items', style: TextStyle(color: Colors.white)),
        actions: [
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(width: 16),
          CircleAvatar(
            backgroundImage:
                AssetImage('assets/images/trees.png'), // User profile image
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Any header or extra info can be placed here

            // Expanded is used to ensure that GridView gets bounded height
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.75, // Adjust based on the desired size
                ),
                itemCount: 6, // Number of items
                itemBuilder: (context, index) {
                  return CustomCard();
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: Icon(Icons.add),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(children: [
      Container(
        width: width * (243 / 1440),
        height: height * (182 / 905),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image:
                DecorationImage(image: AssetImage("assets/images/trees.png"))),
      ),
      Positioned(
        top: height * (180 / 905),
        left: width * (15.967 / 1440),
        child: Container(
          width: width * (210 / 1440),
          height: height * (170 / 905),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              color: Color(0xff171717)),
        ),
      ),
      Positioned(
        top: height * (150 / 905),
        left: width * (15.967 / 1440),
        child: Container(
          height: 50,
          width: width * (210 / 1440),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xff171717).withOpacity(0.7), // Shadow color
                spreadRadius: 4, // How much the shadow will spread
                blurRadius: 10, // How soft the shadow will appear
                offset: Offset(0, 0), // Shadow position (x, y)
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0xff171717).withOpacity(0.5), // High opacity
                Colors.transparent, // Low opacity
              ],
            ),
          ),
        ),
      ),
      Positioned(
          top: 6,
          left: width * (195 / 1440),
          child: Image.asset("assets/images/dots.png")),
      Positioned(
          top: height * (160 / 905),
          left: width * (25.967 / 1440),
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: width * (4 / 1440), horizontal: width * (12 / 1440)),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xffC25F30))),
            child: SizedBox(
              width: width * (120 / 1440),
              child: Row(
                children: [
                  SizedBox(
                    width: width * (100 / 1440),
                    child: Text(
                      'Pending Approval',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.white, size: 16)
                ],
              ),
            ),
          )),
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Item title',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 4),
            // Date
            Row(
              children: [
                Icon(Icons.calendar_today, color: Colors.grey, size: 12),
                SizedBox(width: 4),
                Text(
                  '5 Nights (Jan 16 - Jan 20, 2024)',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
            SizedBox(height: 8),
            // Avatars and unfinished tasks
            SizedBox(
              child: Row(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            NetworkImage('https://via.placeholder.com/50'),
                        radius: 12,
                      ),
                      Positioned(
                        left: 16,
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage('https://via.placeholder.com/50'),
                          radius: 12,
                        ),
                      ),
                      Positioned(
                        left: 32,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[700],
                          radius: 12,
                          child: Text(
                            '+6',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    '4 unfinished tasks',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
          ])
    ]);
  }
}

// class CustomCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.grey[900],
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Image with "Pending Approval" overlay
//           Stack(
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(16),
//                     topRight: Radius.circular(16)),
//                 child: Image.asset(
//                   'assets/images/trees.png',
//                   height: 250,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Positioned(
//                 top: 10,
//                 right: 10,
//                 child: Icon(Icons.more_vert, color: Colors.white),
//               ),
//               Positioned(
//                 top: 22,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     boxShadow: [
//                       BoxShadow(
//                         color: const Color.fromARGB(255, 0, 0, 0)
//                             .withOpacity(0.1), // Shadow color
//                         spreadRadius: 0, // How much the shadow will spread
//                         blurRadius: 104, // How soft the shadow will appear
//                         offset: Offset(0, 0), // Shadow position (x, y)
//                       ),
//                     ],
//                   ),
//                   child: Container(
//                     padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
//                     decoration: BoxDecoration(
//                         color: Colors.black.withOpacity(0.7),
//                         borderRadius: BorderRadius.circular(20),
//                         border: Border.all(color: Color(0xffC25F30))),
//                     child: SizedBox(
//                       width: 120,
//                       child: Row(
//                         children: [
//                           Text(
//                             'Pending Approval',
//                             style: TextStyle(color: Colors.white, fontSize: 12),
//                           ),
//                           Icon(Icons.arrow_drop_down,
//                               color: Colors.white, size: 16)
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),

//           Padding(
//             padding: const EdgeInsets.only(left: 8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Item title',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 SizedBox(height: 4),
//                 // Date
//                 Row(
//                   children: [
//                     Icon(Icons.calendar_today, color: Colors.grey, size: 12),
//                     SizedBox(width: 4),
//                     Text(
//                       '5 Nights (Jan 16 - Jan 20, 2024)',
//                       style: TextStyle(color: Colors.grey, fontSize: 12),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 8),
//                 // Avatars and unfinished tasks
//                 SizedBox(
//                   child: Row(
//                     children: [
//                       Stack(
//                         children: [
//                           CircleAvatar(
//                             backgroundImage:
//                                 NetworkImage('https://via.placeholder.com/50'),
//                             radius: 12,
//                           ),
//                           Positioned(
//                             left: 16,
//                             child: CircleAvatar(
//                               backgroundImage: NetworkImage(
//                                   'https://via.placeholder.com/50'),
//                               radius: 12,
//                             ),
//                           ),
//                           Positioned(
//                             left: 32,
//                             child: CircleAvatar(
//                               backgroundColor: Colors.grey[700],
//                               radius: 12,
//                               child: Text(
//                                 '+6',
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 10),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Spacer(),
//                       Text(
//                         '4 unfinished tasks',
//                         style: TextStyle(color: Colors.grey, fontSize: 12),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: border)),
      margin: blockMargin,
      child: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        columnCrossAxisAlignment: CrossAxisAlignment.center,
        columnMainAxisSize: MainAxisSize.min,
        rowPadding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
        columnPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        columnSpacing: 50,
        rowSpacing: 50,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            rowFit: FlexFit.tight,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: buildMaterialIconCircle(
                      "assets/images/icon_development.png", 68),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text("Fast Development",
                      style: headlineSecondaryTextStyle,
                      textAlign: TextAlign.center),
                ),
                const Text(
                    "Paint your app to life in milliseconds with Stateful Hot Reload. Use a rich set of fully-customizable widgets to build native interfaces in minutes.",
                    style: bodyTextStyle,
                    textAlign: TextAlign.center),
              ],
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            rowFit: FlexFit.tight,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child:
                      buildMaterialIconCircle("assets/images/icon_ui.png", 68),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text("Expressive and Flexible UI",
                      style: headlineSecondaryTextStyle,
                      textAlign: TextAlign.center),
                ),
                const Text(
                    "Quickly ship features with a focus on native end-user experiences. Layered architecture allows for full customization, which results in incredibly fast rendering and expressive and flexible designs.",
                    style: bodyTextStyle,
                    textAlign: TextAlign.center),
              ],
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            rowFit: FlexFit.tight,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: buildMaterialIconCircle(
                      "assets/images/icon_performance.png", 68),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text("Native Performance",
                      style: headlineSecondaryTextStyle,
                      textAlign: TextAlign.center),
                ),
                RichText(
                  text: TextSpan(
                    style: bodyTextStyle,
                    children: [
                      const TextSpan(
                          text:
                              "Flutter’s widgets incorporate all critical platform differences such as scrolling, navigation, icons and fonts, and your Flutter code is compiled to native ARM machine code using "),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              openUrl("https://dart.dev/platforms");
                            },
                          text: "Dart's native compilers",
                          style: bodyLinkTextStyle),
                      const TextSpan(text: "."),
                    ],
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FastDevelopment extends StatefulWidget {
  const FastDevelopment({super.key});

  @override
  State<FastDevelopment> createState() => _FastDevelopmentState();
}

class _FastDevelopmentState extends State<FastDevelopment> {
  late VideoPlayerController videoController;
  late Future<void> initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    videoController = VideoPlayerController.asset("assets/videos/FastDev.mp4");
    videoController.setVolume(0);
    videoController.setLooping(true);
    initializeVideoPlayerFuture = videoController.initialize().then((_) {
      if (mounted) {
        // Display the first frame of the video before playback.
        setState(() {});
        videoPlay();
      }
    });
  }

  @override
  void dispose() {
    videoController.dispose();
    super.dispose();
  }

  void videoPlay() {
    videoController.play();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: border)),
      margin: blockMargin,
      padding: blockPadding(context),
      child: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 2,
            child: FutureBuilder(
              future: initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // If the VideoPlayerController has finished initialization, use
                  // the data it provides to limit the aspect ratio of the VideoPlayer.
                  return AspectRatio(
                    aspectRatio: videoController.value.aspectRatio,
                    child: RepaintBoundary(child: VideoPlayer(videoController)),
                  );
                } else {
                  // If the VideoPlayerController is still initializing, show a
                  // loading spinner.
                  return Container();
                }
              },
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 32, 25, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: buildMaterialIconCircle(
                        "assets/images/icon_development.png", 68),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 32),
                    child: Text("Fast Development", style: headlineTextStyle),
                  ),
                  RichText(
                    text: TextSpan(
                      style: bodyTextStyle,
                      children: [
                        const TextSpan(text: "Flutter's "),
                        TextSpan(
                            text: "hot reload",
                            style: bodyTextStyle.copyWith(
                                fontStyle: FontStyle.italic)),
                        const TextSpan(
                            text:
                                " helps you quickly and easily experiment, build UIs, add features, and fix bugs faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android."),
                        const TextSpan(text: "\n\n"),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                openUrl(
                                    "https://flutter.dev/docs/development/tools/hot-reload");
                              },
                            text: "Learn more",
                            style: bodyLinkTextStyle)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BeautifulUI extends StatefulWidget {
  const BeautifulUI({super.key});

  @override
  State<BeautifulUI> createState() => _BeautifulUIState();
}

class _BeautifulUIState extends State<BeautifulUI> {
  late VideoPlayerController videoController;
  late Future<void> initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    videoController =
        VideoPlayerController.asset("assets/videos/BeautifulUI.mp4");
    videoController.setVolume(0);
    videoController.setLooping(true);
    initializeVideoPlayerFuture = videoController.initialize().then((_) {
      if (mounted) {
        // Display the first frame of the video before playback.
        setState(() {});
        videoPlay();
      }
    });
  }

  @override
  void dispose() {
    videoController.dispose();
    super.dispose();
  }

  void videoPlay() {
    videoController.play();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: border)),
      margin: blockMargin,
      padding: blockPadding(context),
      child: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            columnOrder: 2,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 32, 25, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: buildMaterialIconCircle(
                        "assets/images/icon_ui.png", 68),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 32),
                    child: Text("Expressive, beautiful UIs",
                        style: headlineTextStyle),
                  ),
                  RichText(
                    text: TextSpan(
                      style: bodyTextStyle,
                      children: [
                        const TextSpan(
                            text:
                                "Delight your users with Flutter's built-in beautiful Material Design and Cupertino (iOS-flavor) widgets, rich motion APIs, smooth natural scrolling, and platform awareness."),
                        const TextSpan(text: "\n\n"),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                openUrl(
                                    "https://flutter.dev/docs/development/ui/widgets/catalog");
                              },
                            text: "Browse the widget catalog",
                            style: bodyLinkTextStyle),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 2,
            columnOrder: 1,
            child: FutureBuilder(
              future: initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // If the VideoPlayerController has finished initialization, use
                  // the data it provides to limit the aspect ratio of the VideoPlayer.
                  return AspectRatio(
                    aspectRatio: videoController.value.aspectRatio,
                    child: RepaintBoundary(child: VideoPlayer(videoController)),
                  );
                } else {
                  // If the VideoPlayerController is still initializing, show a
                  // loading spinner.
                  return Container();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NativePerformance extends StatefulWidget {
  const NativePerformance({super.key});

  @override
  State<NativePerformance> createState() => _NativePerformanceState();
}

class _NativePerformanceState extends State<NativePerformance> {
  late VideoPlayerController videoController;
  late Future<void> initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    videoController =
        VideoPlayerController.asset("assets/videos/NativePerformance.mp4");
    videoController.setVolume(0);
    videoController.setLooping(true);
    initializeVideoPlayerFuture = videoController.initialize().then((_) {
      if (mounted) {
        // Display the first frame of the video before playback.
        setState(() {});
        videoPlay();
      }
    });
  }

  @override
  void dispose() {
    videoController.dispose();
    super.dispose();
  }

  void videoPlay() {
    videoController.play();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: border)),
      margin: blockMargin,
      padding: blockPadding(context),
      child: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 2,
            child: FutureBuilder(
              future: initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // If the VideoPlayerController has finished initialization, use
                  // the data it provides to limit the aspect ratio of the VideoPlayer.
                  return AspectRatio(
                    aspectRatio: videoController.value.aspectRatio,
                    child: RepaintBoundary(child: VideoPlayer(videoController)),
                  );
                } else {
                  // If the VideoPlayerController is still initializing, show a
                  // loading spinner.
                  return Container();
                }
              },
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 32, 25, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: buildMaterialIconCircle(
                        "assets/images/icon_performance.png", 68),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 32),
                    child: Text("Native Performance", style: headlineTextStyle),
                  ),
                  RichText(
                    text: TextSpan(
                      style: bodyTextStyle,
                      children: [
                        const TextSpan(
                            text:
                                "Flutter’s widgets incorporate all critical platform differences such as scrolling, navigation, icons and fonts to provide full native performance on both iOS and Android."),
                        const TextSpan(text: "\n\n"),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                openUrl("https://flutter.dev/showcase");
                              },
                            text: "Examples of apps built with Flutter",
                            style: bodyLinkTextStyle),
                        const TextSpan(text: "\n\n"),
                        TextSpan(
                            text: "Demo design inspired by ",
                            style: bodyTextStyle.copyWith(fontSize: 12)),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                openUrl("https://dribbble.com/aureliensalomon");
                              },
                            text: "Aurélien Salomon",
                            style: bodyTextStyle.copyWith(
                                fontSize: 12, color: primary)),
                        TextSpan(
                            text: "'s ",
                            style: bodyTextStyle.copyWith(fontSize: 12)),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                openUrl(
                                    "https://dribbble.com/shots/2940231-Google-Newsstand-Navigation-Pattern");
                              },
                            text: "Google Newsstand Navigation Pattern",
                            style: bodyTextStyle.copyWith(
                                fontSize: 12, color: primary)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LearnFromDevelopers extends StatefulWidget {
  const LearnFromDevelopers({super.key});

  @override
  State<LearnFromDevelopers> createState() => _LearnFromDevelopersState();
}

class _LearnFromDevelopersState extends State<LearnFromDevelopers> {
  final String videoUrl = "https://www.youtube.com/embed/W1pNjxmNHNQ";
  final double videoAspectRatio = 1.78;
  UniqueKey webViewKey = UniqueKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: border)),
      margin: blockMargin,
      padding: blockPadding(context),
      child: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            columnOrder: 2,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 32, 25, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 32),
                    child:
                        Text("Learn from developers", style: headlineTextStyle),
                  ),
                  RichText(
                    text: TextSpan(
                      style: bodyTextStyle,
                      children: [
                        const TextSpan(
                            text:
                                "Watch these videos to learn from Google and developers as you build with Flutter."),
                        const TextSpan(text: "\n\n"),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                openUrl("https://www.youtube.com/flutterdev");
                              },
                            text: "Visit our YouTube playlist",
                            style: bodyLinkTextStyle),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 2,
            columnOrder: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: AspectRatio(
                aspectRatio: videoAspectRatio,
                child: (kIsWeb || Platform.isAndroid || Platform.isIOS)
                    ? WebViewWidget(
                        key: webViewKey,
                        controller: WebViewController()
                          ..loadRequest(Uri.parse(videoUrl)),
                      )
                    : Image.asset(
                        "assets/images/video_thumbnail_learn_from_developers.png",
                        fit: BoxFit.contain)
                // TODO: Legacy WebView on Web workarounds.
//                HtmlElementView(
//                        key: webViewKey,
//                        viewType: webViewKey.toString(),
//                      )
                ,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WhoUsesFlutter extends StatelessWidget {
  const WhoUsesFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: border)),
      margin: blockMargin,
      padding: blockPadding(context),
      child: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 5,
            columnOrder: 2,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 24, 25, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child:
                        Text("Who's using Flutter?", style: headlineTextStyle),
                  ),
                  RichText(
                    text: TextSpan(
                      style: bodyTextStyle,
                      children: [
                        const TextSpan(
                            text:
                                "Organizations around the world are building apps with Flutter."),
                        const TextSpan(text: "\n\n"),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                openUrl("https://flutter.dev/showcase");
                              },
                            text: "See what’s being created",
                            style: bodyLinkTextStyle),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          ResponsiveRowColumnItem(
              rowFlex: 7,
              columnOrder: 1,
              child: Image.asset("assets/images/companies_using_flutter.png",
                  fit: BoxFit.contain)),
        ],
      ),
    );
  }
}

class FlutterNewsRow extends StatelessWidget {
  const FlutterNewsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: blockMargin,
      child: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        rowSpacing: 25,
        columnSpacing: 32,
        children: const [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            rowFit: FlexFit.tight,
            child: FlutterNewsCard(
              title: "Announcing Flutter 1.12",
              imagePath: "assets/images/news_flutter_1.12.png",
              linkUrl:
                  "https://developers.googleblog.com/2019/12/flutter-ui-ambient-computing.html",
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            rowFit: FlexFit.tight,
            child: FlutterNewsCard(
              title: "CodePen now supports Flutter",
              imagePath: "assets/images/news_flutter_codepen.png",
              linkUrl:
                  "https://medium.com/flutter/announcing-codepen-support-for-flutter-bb346406fe50",
            ),
          ),
        ],
      ),
    );
  }
}

class FlutterNewsCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final String linkUrl;

  const FlutterNewsCard(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.linkUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: border)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: const BoxConstraints(maxHeight: 400),
            child: Image.asset(imagePath, fit: BoxFit.fitWidth),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 40, 40, 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text("News",
                      style: bodyTextStyle.copyWith(
                          fontSize: 12, color: const Color(0xFF6C757D))),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(title, style: headlineSecondaryTextStyle),
                ),
                GestureDetector(
                  onTap: () => openUrl(linkUrl),
                  child: Text("Read More", style: bodyLinkTextStyle),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FlutterCodelab extends StatefulWidget {
  const FlutterCodelab({super.key});

  @override
  State<FlutterCodelab> createState() => _FlutterCodelabState();
}

class _FlutterCodelabState extends State<FlutterCodelab>
    with AutomaticKeepAliveClientMixin<FlutterCodelab> {
  static List<String> codelabIds = ["Spinning Flutter", "Fibonacci", "Counter"];
  static List<String> codelabUrls = [
    "https://dartpad.dev/embed-flutter.html?id=c0450ca427127acfb710a31c99761f1a",
    "https://dartpad.dev/embed-flutter.html?id=38311b87e4b3c76329812077c82323b4",
    "https://dartpad.dev/embed-flutter.html?id=7b5710b344431457753253625a596158"
  ];
  String codelabSelected = codelabIds[0];
  String codelabUrlSelected = codelabUrls[0];
  final double videoAspectRatio = 1.75;

  late Map<String, Widget> codelabExamples;
  UniqueKey webViewKey = UniqueKey();

  @override
  void initState() {
    super.initState();
    codelabExamples = <String, Widget>{
      codelabIds[0]: getCupertinoSelectionWidget(codelabIds[0]),
      codelabIds[1]: getCupertinoSelectionWidget(codelabIds[1]),
      codelabIds[2]: getCupertinoSelectionWidget(codelabIds[2]),
    };
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: border)),
      margin: blockMargin,
      padding: blockPadding(context),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text("Try Flutter in your browser",
                    style: headlineTextStyle),
              ),
              CupertinoSlidingSegmentedControl(
                groupValue: codelabSelected,
                onValueChanged: (dynamic value) => setCodelabSelected(value),
                children: codelabExamples,
              ),
              RepaintBoundary(
                key: webViewKey,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 16, 25, 16),
                  child: AspectRatio(
                    aspectRatio: videoAspectRatio,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xFFD3D3D3), width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(0)),
                      ),
                      child: WebViewWidget(
                        key: webViewKey,
                        controller: WebViewController()
                          ..loadRequest(Uri.parse(codelabUrlSelected)),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: RichText(
                  text: TextSpan(
                    style: headlineSecondaryTextStyle,
                    children: [
                      const TextSpan(text: "Want more practice? "),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              openUrl("https://flutter.dev/codelabs");
                            },
                          text: "Try a codelab",
                          style: headlineSecondaryTextStyle.copyWith(
                              color: primary)),
                      const TextSpan(text: ".")
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  void setCodelabSelected(String codelab) {
    codelabSelected = codelab;
    codelabUrlSelected = codelabUrls[codelabIds.indexOf(codelab)];
    setState(() {});
  }

  Widget getCupertinoSelectionWidget(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Text(text, style: bodyTextStyle),
    );
  }
}

class InstallFlutter extends StatelessWidget {
  const InstallFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: border)),
      margin: blockMargin,
      padding: blockPadding(context),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text("Install Flutter today.", style: headlineTextStyle),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text("It’s free and open source.",
                    style: bodyTextStyle.copyWith(fontSize: 24)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: TextButton(
                  onPressed: () =>
                      openUrl("https://flutter.dev/docs/get-started/install"),
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(primary),
                      overlayColor: WidgetStateProperty.resolveWith<Color>(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.hovered)) {
                            return buttonPrimaryDark;
                          }
                          if (states.contains(WidgetState.focused) ||
                              states.contains(WidgetState.pressed)) {
                            return buttonPrimaryDarkPressed;
                          }
                          return primary;
                        },
                      ),
                      // Shape sets the border radius from default 3 to 0.
                      shape: WidgetStateProperty.resolveWith<OutlinedBorder>(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.focused) ||
                              states.contains(WidgetState.pressed)) {
                            return const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)));
                          }
                          return const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0)));
                        },
                      ),
                      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.symmetric(
                              vertical: 32, horizontal: 90)),
                      // Side adds pressed highlight outline.
                      side: WidgetStateProperty.resolveWith<BorderSide>(
                          (Set<WidgetState> states) {
                        if (states.contains(WidgetState.focused) ||
                            states.contains(WidgetState.pressed)) {
                          return const BorderSide(
                              width: 3, color: buttonPrimaryPressedOutline);
                        }
                        // Transparent border placeholder as Flutter does not allow
                        // negative margins.
                        return const BorderSide(width: 3, color: Colors.white);
                      })),
                  child: Text(
                    "Get started",
                    style: buttonTextStyle.copyWith(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundDark,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).isMobile
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        columnMainAxisSize: MainAxisSize.min,
        children: [
          ResponsiveRowColumnItem(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
              child: Image.asset("assets/images/flutter_logo_mono.png",
                  height: 100, fit: BoxFit.contain),
            ),
          ),
          ResponsiveRowColumnItem(
            rowFit: FlexFit.loose,
            columnFit: FlexFit.loose,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: bodyTextStyle.copyWith(
                        fontSize: 14, color: Colors.white, height: 2),
                    children: [
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              openUrl(
                                  "https://groups.google.com/forum/#!forum/flutter-dev");
                            },
                          text: "flutter-dev@"),
                      const TextSpan(text: "  •  "),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              openUrl("https://flutter.dev/tos");
                            },
                          text: "terms"),
                      const TextSpan(text: "  •  "),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              openUrl("https://flutter.dev/security");
                            },
                          text: "security"),
                      const TextSpan(text: "  •  "),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              openUrl(
                                  "https://www.google.com/intl/en/policies/privacy");
                            },
                          text: "privacy"),
                      const TextSpan(text: "  •  "),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              openUrl("https://flutter-es.io/");
                            },
                          text: "español"),
                      const TextSpan(text: "  •  "),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              openUrl("https://flutter.cn/");
                            },
                          text: "社区中文资源"),
                    ],
                  ),
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      style: bodyTextStyle.copyWith(
                          fontSize: 14, color: Colors.white, height: 1),
                      children: [
                        const TextSpan(text: '\n'),
                        TextSpan(
                            text:
                                "Except as otherwise noted, this work is licensed under a Creative Commons Attribution 4.0 International License, and code samples are licensed under the BSD License.",
                            style: bodyTextStyle.copyWith(
                                fontSize: 10, color: Colors.white)),
                        const TextSpan(text: '\n'),
                        const TextSpan(text: '\n'),
                        const TextSpan(text: '\n'),
                      ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
