import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CarouselImages extends StatefulWidget {
  final List<String> imagesLisUrl;

  const CarouselImages(this.imagesLisUrl);

  @override
  State<CarouselImages> createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.35,
      child: Carousel(
        dotSize: 5,
        dotBgColor: Colors.transparent,
        autoplay: false,
        images: [
          AssetImage(
            widget.imagesLisUrl[0],
          ),
          AssetImage(
            widget.imagesLisUrl[1],
          ),
          AssetImage(
            widget.imagesLisUrl[2],
          ),
          AssetImage(
            widget.imagesLisUrl[3],
          ),
          AssetImage(
            widget.imagesLisUrl[4],
          ),
          AssetImage(
            widget.imagesLisUrl[5],
          ),
        ],
      ),
    );
  }
}
