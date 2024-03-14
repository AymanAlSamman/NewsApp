import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/config/constants.dart';
import 'package:news_app/models/articles_data_model.dart';

class ArticlesItemWidget extends StatelessWidget {
  final Articles article;

  const ArticlesItemWidget({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.1),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
            ),
            child: CachedNetworkImage(
              imageUrl: article.urlToImage ?? "",
              fit: BoxFit.cover,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              placeholder: (context, url) => Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              article.source?.name ?? "",
              textAlign: TextAlign.start,
              style: Constants.theme.textTheme.bodySmall?.copyWith(
                color: const Color(0xff79828B),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Text(
              article.title ?? "",
              textAlign: TextAlign.start,
              style: Constants.theme.textTheme.bodyMedium?.copyWith(
                color: Colors.black,
                height: 1.2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Text(
              article.publishedAt ?? "",
              textAlign: TextAlign.end,
              style: Constants.theme.textTheme.bodySmall?.copyWith(
                color: const Color(0xff79828B),
                height: 1.2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
