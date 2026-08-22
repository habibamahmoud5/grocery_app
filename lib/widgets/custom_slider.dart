import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  int activeIndex = 0;

  final List<String> banners = [
    'assets/banner.png',
    'assets/banner1.jpg',
    'assets/banner2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 115,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(seconds: 1),
            enlargeCenterPage: false,
            viewportFraction: 1,

            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),

          items: banners.map((image) {
            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList(),
        ),

        Positioned(
          bottom: 6,
          child: AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: banners.length,
            effect: ExpandingDotsEffect(
              activeDotColor: Color(0xff53B175),

              dotColor: Colors.white,
              dotHeight: 6,
              dotWidth: 6,
              spacing: 4,
            ),
          ),
        ),
      ],
    );
  }
}
