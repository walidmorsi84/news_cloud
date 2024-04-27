import 'package:flutter/material.dart';
import 'package:news_cloud/models/category_model.dart';
import 'package:news_cloud/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.categoryModel}) : super(key: key);

  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: categoryModel.categoryName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Container(
          width: 150,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                categoryModel.categoryImage,
              ),
            ),
          ),
          child: Center(
            child: Text(
              categoryModel.categoryName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
