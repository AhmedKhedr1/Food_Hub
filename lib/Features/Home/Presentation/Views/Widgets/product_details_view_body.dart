import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/Features/Home/Presentation/Views/Widgets/spicy_slider.dart';
import 'package:food_hub/Features/Home/Presentation/Views/Widgets/tooping_section.dart';
import 'package:food_hub/Features/Home/data/Models/product_model.dart';
import 'package:food_hub/Features/Home/data/Models/tooping_model.dart';
import 'package:food_hub/Features/Home/data/Repo/tooping_repo.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductDetailsViewBody extends StatefulWidget {
  const ProductDetailsViewBody({super.key, required this.product});
  final ProductModel product;

  @override
  State<ProductDetailsViewBody> createState() => _ProductDetailsViewBodyState();
}

class _ProductDetailsViewBodyState extends State<ProductDetailsViewBody> {
  bool isLoading = false;
  List<ToopingModel> Toopings = [];
  List<ToopingModel> Sideoptions = [];
  ToopingRepo _toopingRepo = ToopingRepo();

  Future<void> GetToopings() async {
    setState(() {
      isLoading = true;
    });
    final response = await _toopingRepo.GetToopings();
    setState(() {
      Toopings = response;
      isLoading = false;
    });
  }

  Future<void> GetSideOptions() async {
    setState(() {
      isLoading = true;
    });
    final response = await _toopingRepo.GetSideOption();
    setState(() {
      Sideoptions = response;
      isLoading = false;
    });
  }

  @override
  void initState() {
    GetToopings();
    GetSideOptions();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Skeletonizer(
        enabled: isLoading,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(widget.product.Image, width: 200, fit: BoxFit.cover),
            Gap(10),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 14),
              child: Align(
                alignment: Alignment.centerLeft,

                child: Text(
                  widget.product.Name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //  Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [SpicySlider()],
            ),
            Gap(18),
            ToopingSection(SectionTitle: 'Toppings', toopings: Toopings),
            Gap(18),
            ToopingSection(SectionTitle: 'Side options', toopings: Sideoptions),
          ],
        ),
      ),
    );
  }
}
