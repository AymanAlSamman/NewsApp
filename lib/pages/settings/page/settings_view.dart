import 'package:flutter/material.dart';
import 'package:news_app/core/config/constants.dart';
import 'package:news_app/core/widget/custom_background_widget.dart';
import 'package:news_app/home/page/category_view.dart';
import 'package:news_app/home/widget/custom_drawer.dart';
import 'package:news_app/models/category_model.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({
    super.key,
  });

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget();
  }
}
