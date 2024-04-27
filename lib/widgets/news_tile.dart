import 'package:flutter/material.dart';
import 'package:news_cloud/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    required this.resultModel,
    super.key,
  });
  final ArticleModel resultModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              resultModel.image ?? 'Image is not available',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Text(
            resultModel.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            //textDirection: TextDirection.rtl,
          ),
          Text(
            resultModel.subTitle ?? '',
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            //textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
