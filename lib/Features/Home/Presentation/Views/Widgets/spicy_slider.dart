import 'package:flutter/material.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';
import 'package:gap/gap.dart';

class SpicySlider extends StatefulWidget {
  const SpicySlider({super.key});

  @override
  State<SpicySlider> createState() => _SpicySliderState();
}

class _SpicySliderState extends State<SpicySlider> {
  late double _value;
  @override
  void initState() {
    // TODO: implement initState
    _value = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Gap(10),
        Text(
          'Customize Your Burger to Your Tastes.Ultimate Experience',
          style: TextStyle(fontSize: 14),
        ),
        Gap(10),
        Text('Spicy', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(
          width: 300,
          child: Slider(
            padding: EdgeInsets.zero,
            min: 0,
            max: 10,
            value: _value,
            activeColor: AppColors.Primary,
            onChanged: (value) {
              setState(() {
                if (_value < 10) {
                  _value++;
                }
              });
            },
          ),
        ),
        Gap(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Cold 🥶', style: TextStyle(fontSize: 16)),
            Gap(200),
            Text('🌶️ Hot', style: TextStyle(fontSize: 16)),
          ],
        ),
      ],
    );
  }
}
