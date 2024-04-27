import 'package:flutter/material.dart';
import 'package:news_cloud/widgets/news_tile_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key, required this.category}) : super(key: key);
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            NewsTileListViewBuilder(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}
