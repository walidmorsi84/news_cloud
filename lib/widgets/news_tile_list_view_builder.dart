import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_cloud/models/article_model.dart';
import 'package:news_cloud/services/news_service.dart';
import 'news_tile_list_view.dart';

class NewsTileListViewBuilder extends StatefulWidget {
  const NewsTileListViewBuilder({super.key, required this.category});

  final String category;

  @override
  State<NewsTileListViewBuilder> createState() =>
      _NewsTileListViewBuilderState();
}

class _NewsTileListViewBuilderState extends State<NewsTileListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(Dio()).getNews(widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsTileListView(
            resultsList: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text(
                'Oops, there was an error, try later! or you are offline.'),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        // return isLoading                 this return for the build method of =>  Widget build(BuildContext context)
        //     ? const SliverToBoxAdapter(
        //         child: Center(
        //           child: CircularProgressIndicator(),
        //         ),
        //       )
        //     : resultsList.isNotEmpty
        //         ? NewsTileListView(
        //             resultsList: resultsList,
        //           )
        //         : const SliverToBoxAdapter(
        //             child: Text(
        //                 'Oops, there was an error, try later! or you are offline.'),
        //           );
      },
    );
  }
}
