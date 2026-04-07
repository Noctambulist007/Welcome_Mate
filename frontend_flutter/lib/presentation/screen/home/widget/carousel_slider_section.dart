import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CarouselSliderSection extends ConsumerWidget {
  const CarouselSliderSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return  SizedBox(
      width: double.infinity,
      height: 200,
      child: CarouselSlider(
        options: CarouselOptions(

          height: 200,
          scrollDirection: Axis.horizontal,
          autoPlay: true,
          enlargeCenterPage: true,
        ),
        items: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'assets/images/banner-01.png',
              fit: BoxFit.contain,
              width: double.infinity,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'assets/images/banner-02.png',
              fit: BoxFit.contain,
              width: double.infinity,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'assets/images/banner-03.png',
              fit: BoxFit.contain,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
