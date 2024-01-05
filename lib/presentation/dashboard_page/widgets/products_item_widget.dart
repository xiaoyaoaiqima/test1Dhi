import '../models/products_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test1/core/app_export.dart';
import 'package:test1/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class ProductsItemWidget extends StatelessWidget {
  ProductsItemWidget(
    this.productsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductsItemModel productsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineBlue.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: productsItemModelObj?.image,
              height: 133.adaptSize,
              width: 133.adaptSize,
              radius: BorderRadius.circular(
                5.h,
              ),
            ),
            SizedBox(height: 8.v),
            SizedBox(
              width: 107.h,
              child: Text(
                productsItemModelObj.nikeAirMaxReact!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.labelLarge!.copyWith(
                  height: 1.50,
                ),
              ),
            ),
            SizedBox(height: 4.v),
            CustomRatingBar(
              ignoreGestures: true,
              initialRating: 4,
            ),
            SizedBox(height: 18.v),
            Text(
              productsItemModelObj.price!,
              style: CustomTextStyles.labelLargePrimary,
            ),
            SizedBox(height: 5.v),
            Row(
              children: [
                Text(
                  productsItemModelObj.price1!,
                  style: CustomTextStyles.bodySmall10.copyWith(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    productsItemModelObj.offer!,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
