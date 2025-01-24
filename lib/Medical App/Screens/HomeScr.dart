import 'dart:async';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomescrMedi extends StatefulWidget {
  HomescrMedi({super.key});

  @override
  State<HomescrMedi> createState() => _HomescrMediState();
}

class _HomescrMediState extends State<HomescrMedi> {
  final List<String> images = [
    'assets/w1.jpg',
    'assets/w2.webp',
    'assets/w3.jpg',
    'assets/w4.webp',
  ];

  late final List<String> infiniteImages;

  final PageController _pageController = PageController(initialPage: 1);
  int activeIndex = 0;

  Timer? _timer;

  @override
  void initState() {
    super.initState();

    infiniteImages = [images.last, ...images, images.first];
    _startAutoScroll();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_pageController.hasClients) {
        _pageController.nextPage(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  void _onPageChanged(int index) {
    setState(() {
      if (index == 0) {
        _pageController.jumpToPage(infiniteImages.length - 2);
        activeIndex = images.length - 1;
      } else if (index == infiniteImages.length - 1) {
        _pageController.jumpToPage(1);
        activeIndex = 0;
      } else {
        activeIndex = index - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'MediApp',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            size: 35,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .3,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                PageView.builder(
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: infiniteImages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(infiniteImages[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
                // SmoothIndicator کو تصویر کے نیچے رکھنے کے لیے Stack میں شامل کیا گیا۔
                Positioned(
                  bottom: 10, // تصویر سے 10 پوائنٹ نیچے
                  child: AnimatedSmoothIndicator(
                    activeIndex: activeIndex,
                    count: images.length,
                    effect: WormEffect(
                      activeDotColor: Colors.blue, // Active dot کا رنگ
                      dotColor: Colors.grey, // Inactive dot کا رنگ
                      dotHeight: 10,
                      dotWidth: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
