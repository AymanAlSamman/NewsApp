import 'package:flutter/material.dart';
import 'package:news_app/core/network/api_manager.dart';
import 'package:news_app/home/widget/articles_item_widget.dart';

class ArticlesListWidget extends StatelessWidget {
  final String sourceId;

  const ArticlesListWidget({
    super.key,
    required this.sourceId,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiManager.fetchDataArticales(sourceId),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text("Something went wrong"),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        var articlesList = snapshot.data ?? [];
        return Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) =>
                ArticlesItemWidget(article: articlesList[index]),
            itemCount: articlesList.length,
          ),
        );
      },
    );
  }
}
