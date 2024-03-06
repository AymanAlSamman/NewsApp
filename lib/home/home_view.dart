import 'package:flutter/material.dart';
import 'package:news_app/core/widget/custom_background_widget.dart';

class HomeView extends StatelessWidget {
  static const String homeView = 'homeView';

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('News App'),
        ),
      ),
    );
  }
}
