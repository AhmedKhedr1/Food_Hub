import 'package:flutter/material.dart';
import 'package:food_hub/Core/Constants/Assets.dart';
import 'package:gap/gap.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

String SelectedMethod = 'Cash';

class _PaymentMethodsState extends State<PaymentMethods> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment methods',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        Gap(22),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          tileColor: Color(0xff3C2F2F),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          leading: Image.asset(Assets.dollar),
          title: Text(
            'Cash on Delivery',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          trailing: Radio(
            value: 'Cash',
            groupValue: SelectedMethod,
            fillColor: MaterialStateProperty.all(Colors.white),
            activeColor: Colors.white,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onTap: () => setState(() {
            SelectedMethod = 'Cash';
          }),
        ),
        Gap(20),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          tileColor: Colors.blue.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          leading: Image.asset(Assets.visa, color: Colors.white),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Debit card',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              Text(
                '3566 **** **** 0505',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ],
          ),
          trailing: Radio(
            value: 'Visa',
            groupValue: SelectedMethod,
            fillColor: MaterialStateProperty.all(Colors.white),
            activeColor: Colors.white,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onTap: () => setState(() {
            SelectedMethod = 'Visa';
          }),
        ),
      ],
    );
  }
}
