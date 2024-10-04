import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:webapp_task/components/colors.dart';
import 'package:webapp_task/components/typography.dart';
import 'package:webapp_task/product_card.dart';
import 'package:webapp_task/ui/blocks.dart';
import 'package:webapp_task/utils/utils.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color navLinkColor = Color(0xFF6E7274);

    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 66,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 0, 0, 0),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x1A000000),
                        offset: Offset(0, 2),
                        blurRadius: 4)
                  ]),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  ResponsiveVisibility(
                      visible: false,
                      visibleConditions: [Condition.largerThan(name: MOBILE)],
                      child: SizedBox(
                        width: 80,
                      )),
                  const ResponsiveVisibility(
                    visible: false,
                    visibleConditions: [Condition.equals(name: MOBILE)],
                    child: Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Icon(Icons.menu, color: textPrimary, size: 28)),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context)
                          .popUntil((route) => route.isFirst),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 16, 5),
                        child: Image.asset("assets/images/logo.png",
                            height: 37, fit: BoxFit.contain),
                      ),
                    ),
                  ),
                  const Spacer(),
                  ResponsiveVisibility(
                    visible: false,
                    visibleConditions: const [
                      Condition.largerThan(name: MOBILE)
                    ],
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        //onTap: () => openUrl("https://flutter.dev/docs"),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text("Docs",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0XFF),
                                  fontFamily: fontFamily)),
                        ),
                      ),
                    ),
                  ),
                  ResponsiveVisibility(
                    visible: false,
                    visibleConditions: const [
                      Condition.largerThan(name: MOBILE)
                    ],
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => openUrl("https://flutter.dev/showcase"),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text("items",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: navLinkColor,
                                  fontFamily: fontFamily)),
                        ),
                      ),
                    ),
                  ),
                  ResponsiveVisibility(
                    visible: false,
                    visibleConditions: const [
                      Condition.largerThan(name: MOBILE)
                    ],
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => openUrl("https://flutter.dev/community"),
                        child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text("Pricing",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: navLinkColor,
                                    fontFamily: fontFamily))),
                      ),
                    ),
                  ),
                  ResponsiveVisibility(
                    visible: false,
                    visibleConditions: const [
                      Condition.largerThan(name: MOBILE)
                    ],
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        //onTap: () => openUrl("https://flutter.dev/community"),
                        child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text("info",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: navLinkColor,
                                    fontFamily: fontFamily))),
                      ),
                    ),
                  ),
                  const RotatedBox(
                    quarterTurns: 1,
                    child: SizedBox(
                        width: 16,
                        child: Divider(
                          color: Color(0xff262626),
                        )),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      // onTap: () => openUrl('https://twitter.com/flutterdev'),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: ImageIcon(AssetImage("assets/images/sett.png"),
                            color: navLinkColor, size: 24),
                      ),
                    ),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      //onTap: () => openUrl('https://www.youtube.com/flutterdev'),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: ImageIcon(AssetImage("assets/images/nott.png"),
                            color: navLinkColor, size: 24),
                      ),
                    ),
                  ),
                  const RotatedBox(
                    quarterTurns: 1,
                    child: SizedBox(
                        width: 16,
                        child: Divider(
                          color: Color(0xff262626),
                        )),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("assets/images/jhon.png"),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "John Doe",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  ResponsiveVisibility(
                      visible: false,
                      visibleConditions: [Condition.largerThan(name: MOBILE)],
                      child: SizedBox(
                        width: 80,
                      )),
                ],
              ),
            ),
            const Divider(
              color: Color(0xff262626),
            ),
            Container(
              height: 66,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 0, 0, 0),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x1A000000),
                        offset: Offset(0, 2),
                        blurRadius: 4)
                  ]),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  ResponsiveVisibility(
                      visible: false,
                      visibleConditions: [Condition.largerThan(name: MOBILE)],
                      child: SizedBox(
                        width: 80,
                      )),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context)
                          .popUntil((route) => route.isFirst),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 16, 5),
                          child: Text(
                            "Items",
                            style: TextStyle(color: Colors.white, fontSize: 32),
                          )),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Image.asset("assets/images/filt.png"),
                      ResponsiveVisibility(
                        visible: false,
                        visibleConditions: [Condition.largerThan(name: MOBILE)],
                        child: const RotatedBox(
                          quarterTurns: 1,
                          child: SizedBox(
                              width: 48,
                              child: Divider(
                                color: Color(0xff262626),
                              )),
                        ),
                      ),
                      ResponsiveVisibility(
                          visible: false,
                          visibleConditions: [
                            Condition.largerThan(name: MOBILE)
                          ],
                          child: SizedBox(
                            width: 177,
                            height: 48,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                // Add your onPressed logic here
                                print('Add a New Item button pressed');
                              },
                              icon: Icon(Icons.add, color: Colors.black),
                              label: Text(
                                'Add a New Item',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(
                                    0xFFF4C57C), // Background color (matching the image)
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 12),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      30.0), // Rounded corners
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                  ResponsiveVisibility(
                      visible: false,
                      visibleConditions: [Condition.largerThan(name: MOBILE)],
                      child: SizedBox(
                        width: 80,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * (80 / 1440)),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.2,
                  child: ResponsiveGridView()),
            ),
          ]),
        ));
  }
}

class ResponsiveGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Use MediaQuery or ResponsiveWrapper for responsiveness
    double screenWidth = MediaQuery.of(context).size.width;

    // Define crossAxisCount based on screen width
    int crossAxisCount = 5; // Default for larger screens

    // Adjust crossAxisCount for smaller screens
    if (screenWidth < 600) {
      crossAxisCount = 1; // Small screen (phones) – 1 item per row
    } else if (screenWidth >= 600 && screenWidth <= 1024) {
      crossAxisCount = 2; // Medium screen (tablets) – 2 items per row
    } else if (screenWidth >= 1024 && screenWidth <= 1500) {
      crossAxisCount = 3; // Larger tablets or small desktop
    }

    return Container(
      width: double.infinity, // Ensure the container fills the screen width
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 20,

          childAspectRatio: .8, // Adjust based on the desired size
        ),
        itemCount: 8,

        // Number of items
        itemBuilder: (context, index) {
          return SizedBox(
              child: CustomWidget()); // Replace with your custom widget
        },
      ),
    );
  }
}
