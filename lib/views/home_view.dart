import 'package:flutter/material.dart';
import 'package:news_cloud/widgets/categories_list_view.dart';
import 'package:news_cloud/widgets/news_tile_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 32),
            ),
            NewsTileListViewBuilder(
              category: 'top',
            ),
          ],
        ),
      ),
    );
  }
}
