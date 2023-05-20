import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CanteenSpecial extends StatefulWidget {
  const CanteenSpecial({super.key});

  @override
  State<CanteenSpecial> createState() => _CanteenSpecialState();
}

class _CanteenSpecialState extends State<CanteenSpecial> {
  int activeIndex = 0;

  // List of all images
  final urlImages = [
    "assets/images/1.jpg",
    "assets/images/4.jpg",
    "assets/images/2.jpg",
    "assets/images/5.jpg",
  ];
  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            // sliding image builder
            CarouselSlider.builder(
              itemCount: urlImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages[index];

                // call build image widget
                return buildImage(urlImage, index);
              },

              // option manage all property of slider
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                pageSnapping: true,
                enableInfiniteScroll: true,
                pauseAutoPlayOnTouch: true,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                viewportFraction: 0.9,
                autoPlayInterval: const Duration(seconds: 3),
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index),
              ),
            ),
            const SizedBox(height: 10),

            // dot indicator
            buildIndicator(),
          ],
        ),
      );

  // build images widget
  Widget buildImage(String urlImage, int index) => Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20,
          ),
          color: Colors.grey,
        ),
        // margen between two images
        margin: const EdgeInsets.symmetric(horizontal: 6),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      );

  // build dot indicator
  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        // effect of dot indicator(worm, Expanding Dots,  jumping dots, scrolling dots, slide, scale, swap, )
        effect: const JumpingDotEffect(
          dotWidth: 8,
          dotHeight: 8,
          dotColor: Colors.grey,
          activeDotColor: Colors.red,
        ),
      );
}
