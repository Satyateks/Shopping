// ignore_for_file: unused_field

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/app_bar/appbar_leading_image.dart';
import 'package:satyashopping/widgets/app_bar/appbar_title.dart';
import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';
import 'package:satyashopping/widgets/custom_elevated_button.dart';
import 'package:satyashopping/widgets/custom_outlined_button.dart';

import '../visual_search_crop_the_item_screen/visual_search_crop_the_item_screen.dart';
import '../visual_search_taking_a_photo_screen/visual_search_taking_a_photo_screen.dart';

class VisualSearchScreen extends StatefulWidget {
  const VisualSearchScreen({Key? key}) : super(key: key);

  @override
  State<VisualSearchScreen> createState() => _VisualSearchScreenState();
}

class _VisualSearchScreenState extends State<VisualSearchScreen> {
  File? _image;

  final picker = ImagePicker();

  Future getImageFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        // Get.to(VisualSearchTakingAPhotoScreen());
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => VisualSearchTakingAPhotoScreen()));
      } else {
        print('No image selected.');
      }
    });
  }

  Future getImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => VisualSearchCropTheItemScreen()));
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            appBar: _buildAppBar(context),
            body: SizedBox(
                height: 727.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  _image != null
                      ? Image.file(
                          _image!,
                          height: 724.v,
                          width: 399.h,
                          // alignment: Alignment.center,
                        )
                      : CustomImageView(
                          imagePath: ImageConstant.imgImage,
                          height: 724.v,
                          width: 375.h,
                          alignment: Alignment.center,
                        ),
                  _buildTakeAPhoto(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 32.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 8.h, top: 8.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Visual search"),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildTakeAPhoto(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 16.h, top: 197.v, right: 16.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 325.h,
                      margin: EdgeInsets.only(right: 17.h),
                      child: Text(
                          "Search for an outfit by taking a photo or uploading an image",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.headlineSmall!
                              .copyWith(height: 1.20))),
                  SizedBox(height: 26.v),
                  CustomElevatedButton(
                    text: "TAKE A PHOTO",
                    onPressed: () => getImageFromCamera(),
                  ),
                  SizedBox(height: 16.v),
                  CustomOutlinedButton(
                      height: 48.v,
                      text: "UPLOAD AN IMAGE",
                      onPressed: () => getImageFromGallery(),
                      buttonStyle: CustomButtonStyles.outlineOnPrimary,
                      buttonTextStyle: CustomTextStyles.titleSmallOnPrimary_1)
                ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
