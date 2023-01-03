import 'package:flutter/material.dart';
import 'package:flutter_real_estate_app/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        left: appPadding,
        right: appPadding,
        top: appPadding,
      ),
      child: Container(
        height: size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (() {
                Navigator.pop(context);
              }),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: white.withOpacity(0.4),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(
                  Icons.arrow_back_rounded,
                  color: white,
                ),
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: white.withOpacity(0.4),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(
                Icons.insights_rounded,
                color: white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
