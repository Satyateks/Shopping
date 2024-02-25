import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/custom_elevated_button.dart';
import 'package:satyashopping/widgets/custom_rating_bar.dart';
import 'package:satyashopping/widgets/custom_text_form_field.dart';
import 'widgets/photoreviewsmall_item_widget.dart';

// ignore_for_file: must_be_immutable
class ClientSReviewBottomsheet extends StatelessWidget {
  ClientSReviewBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
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
          SizedBox(height: 18.v),
          Text(
            "What is you rate?",
            style: CustomTextStyles.titleMediumBlack900,
          ),
          SizedBox(height: 18.v),
          CustomRatingBar(
            initialRating: 0,
            itemSize: 36,
          ),
          SizedBox(height: 33.v),
          SizedBox(
            width: 227.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Please share your opinion\n",
                    style: CustomTextStyles.titleMediumff000000,
                  ),
                  TextSpan(
                    text: "about the product",
                    style: CustomTextStyles.titleMediumff222222,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 17.v),
          CustomTextFormField(
            controller: descriptionController,
            hintText:
                "I’m super happy with these! I’ve never bought jeans online before and I didn’t think they’d even fit, but it turns out they fit pretty perfectly. I got a size 28- I’m 5’6” and weigh about 127 lbs. They are tight but not suffocating ...",
            hintStyle: CustomTextStyles.bodyMediumGray900,
            textInputAction: TextInputAction.done,
            maxLines: 6,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 14.v,
            ),
          ),
          SizedBox(height: 39.v),
          SizedBox(
            height: 104.v,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 16.h,
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return PhotoreviewsmallItemWidget();
              },
            ),
          ),
          SizedBox(height: 44.v),
          CustomElevatedButton(
            text: "SEND REVIEW",
          ),
          SizedBox(height: 30.v),
        ],
      ),
    );
  }
}
