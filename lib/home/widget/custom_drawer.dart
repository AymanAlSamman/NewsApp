import 'package:flutter/material.dart';
import 'package:news_app/core/config/constants.dart';
import 'package:news_app/core/config/pages_route_name.dart';
import 'package:news_app/main.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: Constants.mediaQuery.width * 0.7,
      child: Column(
        children: [
          Container(
            color: Constants.theme.primaryColor,
            width: Constants.mediaQuery.width,
            height: Constants.mediaQuery.height * 0.1,
            child: Center(
              child: Text(
                'News App !',
                style: Constants.theme.textTheme.titleLarge,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 15),
            child: Row(
              children: [
                const Icon(
                  Icons.list,
                  size: 30,
                ),
                const SizedBox(
                  width: 5,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Categories',
                    style: Constants.theme.textTheme.bodyMedium
                        ?.copyWith(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                const Icon(
                  Icons.settings,
                  size: 30,
                ),
                const SizedBox(
                  width: 5,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Settings',
                    style: Constants.theme.textTheme.bodyMedium
                        ?.copyWith(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
