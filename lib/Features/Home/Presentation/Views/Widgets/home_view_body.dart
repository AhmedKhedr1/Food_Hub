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
  final ProductRepo productRepo = ProductRepo();

  bool isLoading = false;

  List<ProductModel> products = [];
  List<ProductModel> allProducts = [];

  List<CategoryModel> categories = [];

  Future<void> loadData() async {
    setState(() {
      isLoading = true;
    });

    try {
      final results = await Future.wait([
        productRepo.GetProducts(),
        productRepo.GetAllCategory(),
      ]);

      if (!mounted) return;

      setState(() {
        products = results[0] as List<ProductModel>;
        allProducts = results[0] as List<ProductModel>;
        categories = results[1] as List<CategoryModel>;
        isLoading = false;
      });
    } catch (e) {
      if (!mounted) return;

      setState(() {
        isLoading = false;
      });

      debugPrint(e.toString());
    }
  }

  void searchProducts(String value) {
    setState(() {
      if (value.trim().isEmpty) {
        products = List.from(allProducts);
      } else {
        products = allProducts.where((product) {
          return product.Name.toLowerCase().contains(value.toLowerCase());
        }).toList();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    loadData();
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
              const Gap(60),

              const HomeHeader(),

              const Gap(17),

              SearchTextField(onChanged: searchProducts),

              const Gap(40),

              CategorySection(Categories: categories),

              const Gap(41),

              FoodGrid(products: products),
            ],
          ),
        ),
      ),
    );
  }
}
