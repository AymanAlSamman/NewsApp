import 'package:flutter/material.dart';
import 'package:news_app/core/config/constants.dart';
import 'package:news_app/core/network/api_manager.dart';
import 'package:news_app/core/widget/custom_background_widget.dart';
import 'package:news_app/models/category_model.dart';

class CategoryView extends StatelessWidget {
  final CategoryModel categoryModel;

  const CategoryView({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget(
      child: FutureBuilder(
        future: ApiManager.fetchDataSources(categoryModel.id),
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
          return ListView.builder(
            itemBuilder: (context, index) => Text(
              sourcesList[index].name,
              style: Constants.theme.textTheme.bodyMedium
                  ?.copyWith(color: Colors.black),
            ),
            itemCount: sourcesList.length,
          );
        },
      ),
    );
  }
}
