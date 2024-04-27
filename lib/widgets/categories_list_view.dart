import 'package:flutter/material.dart';
import 'package:news_cloud/models/category_model.dart';
import 'package:news_cloud/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(categoryImage: 'assets/top.jpg', categoryName: 'Top'),
    CategoryModel(
        categoryImage: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(
        categoryImage: 'assets/entertainment.jpg',
        categoryName: 'Entertainment'),
    CategoryModel(
        categoryImage: 'assets/technology.jpeg', categoryName: 'Technology'),
    CategoryModel(categoryImage: 'assets/sports.jpeg', categoryName: 'Sports'),
    CategoryModel(categoryImage: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(
        categoryImage: 'assets/business.png', categoryName: 'Business'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(
            categoryModel: categories[index],
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
