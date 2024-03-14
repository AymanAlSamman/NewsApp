import 'package:flutter/material.dart';
import 'package:news_app/core/config/constants.dart';
import 'package:news_app/core/network/api_manager.dart';
import 'package:news_app/core/widget/custom_background_widget.dart';
import 'package:news_app/home/widget/news_ist_widget.dart';
import 'package:news_app/home/widget/tab_item_widget.dart';
import 'package:news_app/models/category_model.dart';

class CategoryView extends StatefulWidget {
  final CategoryModel categoryModel;

  const CategoryView({super.key, required this.categoryModel});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget(
      child: FutureBuilder(
        future: ApiManager.fetchDataSources(widget.categoryModel.id),
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

          var sourcesList = snapshot.data ?? [];
          return NewsListWidget(sourcesList: sourcesList);
        },
      ),
    );
  }
}
