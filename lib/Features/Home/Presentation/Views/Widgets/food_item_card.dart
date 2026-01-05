import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';
import 'package:food_hub/Core/Constants/Assets.dart';
import 'package:food_hub/Features/Home/data/Models/product_model.dart';
import 'package:gap/gap.dart';

class FoodItemCard extends StatefulWidget {
  const FoodItemCard({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  State<FoodItemCard> createState() => _FoodItemCardState();
}

class _FoodItemCardState extends State<FoodItemCard> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFFFFFF),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                widget.productModel.Image,
                width: 120,
                height: 120,
              ),
            ),
            Gap(6),
            Text(
              widget.productModel.Name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),

            Text(
              widget.productModel.Description,
              maxLines: 1,
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
            Gap(2),
            Row(
              children: [
                Text(widget.productModel.Rating),
                Spacer(),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  child: isLiked
                      ? Icon(
                          CupertinoIcons.heart_fill,
                          color: AppColors.Primary,
                        )
                      : Icon(CupertinoIcons.heart),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
