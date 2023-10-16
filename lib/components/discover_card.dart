import 'package:elegore/models/discover_model.dart';
import 'package:flutter/material.dart';

class DiscoverCard extends StatelessWidget {
  final Discover images;
  const DiscoverCard({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //Image
      Padding(
        padding: const EdgeInsets.all(3.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(images.imagePath),
        ),
      ),
    ]);
  }
}
