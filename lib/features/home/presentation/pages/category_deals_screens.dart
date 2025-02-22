import 'package:flutter/material.dart';

import '../../../../constants/global_variables.dart';

class CategoryDealsScreens extends StatefulWidget {
  static const String routeName = '/category-deals';
  final String category;
  const CategoryDealsScreens({
    super.key,
    required this.category,
  });

  @override
  State<CategoryDealsScreens> createState() => _CategoryDealsScreensState();
}

class _CategoryDealsScreensState extends State<CategoryDealsScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Text(
            widget.category,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            alignment: Alignment.topLeft,
            child: Text(
              'Keep Shopping for ${widget.category}',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
