
  import 'package:flutter/material.dart';

class Trending_News extends StatelessWidget {
  const Trending_News({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
      child: Text(
        'Trending News:',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Theme.of(context).textTheme.bodyLarge?.color,
        ),
      ),
    );
  }
}