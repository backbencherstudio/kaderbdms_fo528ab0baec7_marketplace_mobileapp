import 'package:flutter/material.dart';

class CategoryPageScreen extends StatefulWidget {
  const CategoryPageScreen({super.key});

  @override
  State<CategoryPageScreen> createState() => _CategoryPageScreenState();
}

class _CategoryPageScreenState extends State<CategoryPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("category")],
        ),
      ),
    );
  }
}
