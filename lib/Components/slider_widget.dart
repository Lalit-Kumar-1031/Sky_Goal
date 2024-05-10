import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_controller.dart';

class SliderP extends StatefulWidget {
  SliderP({Key? key}) : super(key: key);

  @override
  State<SliderP> createState() => _SliderPState();
}

class _SliderPState extends State<SliderP> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'assets/images/hostel1.jpg',
    'assets/images/hostel2.jpg',
    'assets/images/hostel3.jpg',
    ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            carouselController: controller,
            itemCount: urlImages.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = urlImages[index];
              return buildImage(urlImage, index);
            },
            options: CarouselOptions(
                height: MediaQuery.of(context).size.height*0.2,
                enableInfiniteScroll: false,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 2),
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index))),
        SizedBox(height: 25),
        buildIndicator()
      ],
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect: ExpandingDotsEffect(
          dotWidth: 10,
          dotHeight: 10,
          activeDotColor:Color.fromRGBO(14, 60, 110, 1),
          dotColor: Colors.grey.shade300,
        ),
        activeIndex: activeIndex,
        count: urlImages.length,
      );

  void animateToSlide(int index) => controller.animateToPage(index);
}

Widget buildImage(String urlImage, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),),
    child: Image.asset(urlImage, fit: BoxFit.cover));
