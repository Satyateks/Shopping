import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/custom_elevated_button.dart';
import '../select_size_bottomsheet/widgets/taginactiveordinary2_item_widget.dart';

// ignore_for_file: must_be_immutable
class SelectSizeBottomsheet extends StatelessWidget {
  const SelectSizeBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.background.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL34,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 60.h,
            child: Divider(
              color: appTheme.gray500,
            ),
          ),
          SizedBox(height: 16.v),
          Text(
            "Select size",
            style: CustomTextStyles.titleMedium18,
          ),
          SizedBox(height: 25.v),
          Wrap(
            runSpacing: 22.v,
            spacing: 22.h,
            children: List<Widget>.generate(
                5, (index) => Taginactiveordinary2ItemWidget()),
          ),
          SizedBox(height: 24.v),
          Opacity(
            opacity: 0.25,
            child: Divider(),
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Text(
                "Size info",
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Opacity(
            opacity: 0.25,
            child: Divider(),
          ),
          SizedBox(height: 27.v),
          CustomElevatedButton(
            text: "ADD TO CART",
            margin: EdgeInsets.symmetric(horizontal: 16.h),
          ),
          SizedBox(height: 30.v),
        ],
      ),
    );
  }
}
