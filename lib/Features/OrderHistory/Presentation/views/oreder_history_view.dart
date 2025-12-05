import 'package:flutter/material.dart';
import 'package:food_hub/Features/OrderHistory/Presentation/views/widgets/order_history_view_body.dart';

class OrederHistoryView extends StatelessWidget {
  const OrederHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OrderHistoryViewBody(),
    );
  }
}