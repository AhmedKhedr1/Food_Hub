import 'package:flutter/cupertino.dart';
import 'package:food_hub/Features/Home/Presentation/Views/Widgets/food_item_card.dart';

class FoodGrid extends StatelessWidget {
  const FoodGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      shrinkWrap: true,

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: .78,
        mainAxisSpacing: 15,
        crossAxisSpacing: 16
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return FoodItemCard();
      },
    );
  }
}
