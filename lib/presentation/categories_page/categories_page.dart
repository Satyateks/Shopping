import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'widgets/categorycardsection_item_widget.dart';

// ignore_for_file: must_be_immutable
class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  CategoriesPageState createState() => CategoriesPageState();
}

class CategoriesPageState extends State<CategoriesPage>
    with AutomaticKeepAliveClientMixin<CategoriesPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          height: double.infinity,
          decoration: AppDecoration.background,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Column(
                  children: [
                    _buildSummerSalesSection(context),
                    SizedBox(height: 16.v),
                    _buildCategoryCardSection(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSummerSalesSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 76.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text(
            "SUMMER SALES",
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 6.v),
          Text(
            "Up to 50% off",
            style: CustomTextStyles.titleSmallOnPrimary_1,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoryCardSection(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(height: 11.v);
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return CategorycardsectionItemWidget();
      },
    );
  }
}
