import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';

class DottedTimeline extends StatelessWidget {
  final List<int> items;

  const DottedTimeline({super.key, required this.items});
  

  @override
  Widget build(BuildContext context) {
      final List<String> imagePaths = [
    Assets.assetsImagesBitmap,
    Assets.assetsImagesImage82,
  ];
    return Column(
      children: items.map((item) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                // Custom Circle with a number
                Container(
                  width: 50, // Circle width
                  height: 50, // Circle height
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(66, 231, 94, 255), // Circle color
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 4,
                        offset: const Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        const SizedBox(height: 6),
                        Center(
                          child: Text(
                            '$item',
                            style: const TextStyle(
                              color: Color(0xffE85EFF),
                              fontSize: 20, // Number font size
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Text(
                          'FRI',
                          style: TextStyle(
                            color: Color.fromARGB(128, 231, 94, 255),
                            fontSize: 10, // Label font size
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Dotted line
                CustomPaint(
                  painter: DottedLinePainter(),
                  size: const Size(2, 220), // Height of the dotted line
                ),
              ],
            ),
            const SizedBox(width: 16), // Space between timeline and content
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                height: 220,
                width: 287,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Center(
                  child: CarouselSlider(
          options: CarouselOptions(
            animateToClosest: false,
            scrollDirection: Axis.vertical,
            height: 200.0,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16/9,
            viewportFraction: 0.8,
            autoPlayInterval: Duration(seconds: 3),
          ),
          items: imagePaths.map((imagePath) {
            return Builder(
              builder: (BuildContext context) {
                return Container(

                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24)

                    
                  ),
                  child: Image.asset(imagePath, fit: BoxFit.cover),
                );
              },
            );
          }).toList(),
        ),
                ),
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white // Dot color
      ..style = PaintingStyle.fill; // Solid dots

    double dotSize = 6; // Dot size
    double totalHeight = size.height; // Total height for 13 dots
    double availableHeight = totalHeight - (dotSize * 13); // Remaining height after dots
    double dashSpace = availableHeight / 12; // Space between dots to fit 13 in total

    

    // Adjust startY to ensure the first dot is touching the circle
    double adjustedStartY = 0;

    while (adjustedStartY < size.height - dotSize) {
      canvas.drawCircle(
        Offset(0, adjustedStartY + dotSize / 2), // Center the dot vertically
        dotSize / 2, // Dot radius
        paint,
      );
      adjustedStartY += dotSize + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}