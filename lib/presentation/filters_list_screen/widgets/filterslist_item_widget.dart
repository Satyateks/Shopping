import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';

// ignore: must_be_immutable
class FilterslistItemWidget extends StatelessWidget {
  const FilterslistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 1.v,
            bottom: 2.v,
          ),
          child: Text(
            "adidas",
            style: theme.textTheme.bodyLarge,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgCalendar,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ],
    );
  }
}
