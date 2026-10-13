import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  const CategoryText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
      child: Text(
        'Categories:',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Theme.of(context).textTheme.bodyLarge?.color,
        ),
      ),
    );
  }
}