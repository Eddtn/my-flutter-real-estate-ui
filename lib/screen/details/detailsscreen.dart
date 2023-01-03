import 'package:flutter/material.dart';
import 'package:flutter_real_estate_app/model/house.dart';
import 'package:flutter_real_estate_app/screen/components/customAppbar.dart';
import 'package:flutter_real_estate_app/screen/details/component/carousel_images.dart';

class DetailsScreen extends StatefulWidget {
  final House house;
  const DetailsScreen({Key? key, required this.house}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    print(widget.house.moreImagesUrl);
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              CarouselImages(widget.house.moreImagesUrl),
              const CustomAppBar()
            ],
          ),
        ],
      ),
    );
  }
}
