import 'package:flutter/material.dart';
import 'package:news_cloud/models/article_model.dart';
import 'package:news_cloud/widgets/news_tile.dart';

class NewsTileListView extends StatelessWidget {
  final List<ArticleModel> resultsList;

  const NewsTileListView({super.key, required this.resultsList});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: resultsList.length,
        (context, index) {
          return NewsTile(
            resultModel: resultsList[index],
          );
        },
      ),
    );
  }
}
