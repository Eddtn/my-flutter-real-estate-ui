import 'package:flutter/material.dart';
import 'package:flutter_real_estate_app/constants/constants.dart';
import 'package:flutter_real_estate_app/data/data.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedCategoryIndex = 0;

  Widget _buildCategory(BuildContext context, int index) {
    // Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(right: appPadding / 3),
        child: Container(
          // width: size.width * 0.25,
          padding: EdgeInsets.symmetric(horizontal: appPadding / 2),
          decoration: BoxDecoration(
            color: selectedCategoryIndex == index
                ? darkBlue
                : black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(categoryList[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedCategoryIndex == index ? white : black,
                )),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        left: appPadding,
        top: appPadding / 2,
        bottom: appPadding,
      ),
      child: Container(
        height: size.height * 0.05,
        // color: Colors.black,
        child: ListView.builder(
          // physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: ((context, index) {
            return _buildCategory(context, index);
          }),
        ),
      ),
    );
  }
}
