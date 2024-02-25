import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'widgets/ordercard_item_widget.dart';

// ignore_for_file: must_be_immutable
class MyProfileMyOrdersPage extends StatefulWidget {
  const MyProfileMyOrdersPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyProfileMyOrdersPageState createState() => MyProfileMyOrdersPageState();
}

class MyProfileMyOrdersPageState extends State<MyProfileMyOrdersPage>
    with AutomaticKeepAliveClientMixin<MyProfileMyOrdersPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.background,
            child: Column(
              children: [
                SizedBox(height: 30.v),
                _buildOrderCard(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(height: 24.v);
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return OrdercardItemWidget();
        },
      ),
    );
  }
}
