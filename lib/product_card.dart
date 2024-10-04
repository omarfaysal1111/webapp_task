import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Set a reasonable width, proportional to screen size
    double widgetWidth = 220; // Adjust percentage as needed
    double widgetHeight =
        322; // Fixed height for now, can be made dynamic later

    return Container(
      height: widgetHeight, // Set height for the container
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.transparent,
      ),
      child: Stack(
        children: [
          // Image section (top part)
          Container(
            height: 182, // Height for the image
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/trees.png"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
          ),

          // Bottom dark section
          Positioned(
            top: 180,
            right: 0,
            left: 0, // Positioned just above the image's bottom edge
            child: Container(
              width: widgetWidth,
              decoration: BoxDecoration(
                color: Color(0xff171717),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              height: 150, // Height for the dark section
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Item name
                    Text(
                      "Item Name",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 4),

                    // Date and calendar icon
                    Row(
                      children: [
                        Icon(Icons.calendar_today,
                            color: Colors.grey, size: 12),
                        SizedBox(width: 4),
                        Text(
                          '5 Nights (Jan 16 - Jan 20, 2024)',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),

                    // Divider
                    Divider(color: Colors.grey[700]),

                    // Avatars and tasks row
                    Row(
                      children: [
                        SizedBox(
                          width: 150,
                          child: Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://via.placeholder.com/50'),
                                radius: 12,
                              ),
                              Positioned(
                                left: 16,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://via.placeholder.com/50'),
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
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Text(
                            '4 unfinished tasks',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // "Pending Approval" badge

          Positioned(
            top: 150,
            child: Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 20, 20, 20)
                        .withOpacity(.7), // Shadow color
                    spreadRadius: 5, // How much the shadow will spread
                    blurRadius: 10, // How soft the shadow will appear
                    offset: Offset(0, 3), // Shadow position (x, y)
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 160, // Positioned near the bottom of the image section
            left: 10,
            child: Container(
              width: 176,
              height: 28,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xffC25F30)),
              ),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pending Approval',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.white, size: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
