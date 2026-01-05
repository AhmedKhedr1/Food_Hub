import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/Features/Home/Presentation/Views/Widgets/category_section.dart';
import 'package:food_hub/Features/Home/Presentation/Views/Widgets/food_grid.dart';
import 'package:food_hub/Features/Home/Presentation/Views/Widgets/home_header.dart';
import 'package:food_hub/Features/Home/Presentation/Views/Widgets/search_textfeld.dart';
import 'package:food_hub/Features/Home/data/Models/category_model.dart';
import 'package:food_hub/Features/Home/data/Models/product_model.dart';
import 'package:food_hub/Features/Home/data/Repo/product_repo.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeviewBody extends StatefulWidget {
  const HomeviewBody({super.key});

  @override
  State<HomeviewBody> createState() => _HomeviewBodyState();
}

class _HomeviewBodyState extends State<HomeviewBody> {
  bool isLoading = false;
  ProductRepo productRepo = ProductRepo();
  List<ProductModel> Products = [];
  List<CategoryModel> Categories = [];
  Future<void> GetProducts() async {
    setState(() {
      isLoading = true;
    });
    final response = await productRepo.GetProducts();
    setState(() {
      Products = response;
      isLoading = false;
    });
  }

  Future<void> GetAllCategory() async {
    setState(() {
      isLoading = true;
    });
    final response = await productRepo.GetAllCategory();
    setState(() {
      Categories = response;
      isLoading = false;
    });
  }

  @override
  void initState() {
    GetProducts();
    GetAllCategory();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Skeletonizer(
        enabled: isLoading,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(60),
              HomeHeader(),
              Gap(17),
              SearchTextField(),
              Gap(40),
              CategorySection(Categories: Categories),
              Gap(41),
              FoodGrid(products: Products),
            ],
          ),
        ),
      ),
    );
  }
}
