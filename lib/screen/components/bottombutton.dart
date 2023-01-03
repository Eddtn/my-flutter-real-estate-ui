import 'package:flutter/material.dart';
import 'package:flutter_real_estate_app/constants/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: appPadding),
      child: Container(
        height: 60,
        width: size.width * 0.4,
        decoration: BoxDecoration(
            color: darkBlue,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: darkBlue.withOpacity(0.6),
                offset: Offset(0, 10),
                blurRadius: 10,
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.map_outlined,
              color: Colors.white,
            ),
            Text(
              'Map view',
              style: TextStyle(
                color: white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
