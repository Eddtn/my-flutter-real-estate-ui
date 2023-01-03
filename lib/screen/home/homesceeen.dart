import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_real_estate_app/screen/components/categories.dart';
import 'package:flutter_real_estate_app/screen/components/customAppbar.dart';

import '../components/bottombutton.dart';
import '../components/houses.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: const [
              CustomAppBar(),
              Categories(),
              Houses(),
            ],
          ),
          BottomButton(),
        ],
      ),
    );
  }
}
