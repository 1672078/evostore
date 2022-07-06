import 'package:evo_store/pages/search_5_persen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SlideShowImage extends StatelessWidget {
  const SlideShowImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ImageSlideshow(
      /// Width of the [ImageSlideshow].
      width: double.infinity,

      /// Height of the [ImageSlideshow].
      height: 240,

      /// The page to show when first creating the [ImageSlideshow].
      initialPage: 0,

      /// The color to paint the indicator.
      indicatorColor: Colors.blue,

      /// The color to paint behind th indicator.
      indicatorBackgroundColor: Colors.grey,

      /// Called whenever the page in the center of the viewport changes.
      onPageChanged: (value) {
        // print('Page changed: $value');
      },

      /// Auto scroll interval.
      /// Do not auto scroll with null or 0.
      autoPlayInterval: 3000,

      /// Loops back to first slide.
      isLoop: true,

      /// The widgets to display in the [ImageSlideshow].
      /// Add the sample image file into the images folder
      children: [
        CardSlide(size: size),
        CardSlide(size: size),
        CardSlide(size: size),
      ],
    );
  }
}

class CardSlide extends StatelessWidget {
  const CardSlide({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/1.png',
                  width: size.width,
                  fit: BoxFit.fill,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Diskon 5%',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.white),
                ),
                Text(
                  'untuk pembelian awal',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Search5pageDiscount()),
                      );
                    },
                    child: const Text("Order sekarang"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
