import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';

import '../main_page_container_screen/main_page_container_screen.dart';

class VisualSearchFindingScreen extends StatelessWidget {
  const VisualSearchFindingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MainPageContainerScreen()));
          },
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSearch,
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                ),
                SizedBox(height: 16.v),
                SizedBox(
                  width: 247.h,
                  child: Text(
                    "Finding similar results...",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.displaySmall,
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
