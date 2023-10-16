import 'package:flutter/material.dart';

class Discover {
  final String imagePath;
  Discover({required this.imagePath});
}

class DiscoverImage extends ChangeNotifier {
  List<Discover> images = [
    Discover(imagePath: 'lib/assets/discover/m1.jpeg'),
    Discover(imagePath: 'lib/assets/discover/m2.jpeg'),
    Discover(imagePath: 'lib/assets/discover/m3.jpeg'),
    Discover(imagePath: 'lib/assets/discover/m4.jpeg'),
    Discover(imagePath: 'lib/assets/discover/m5.jpeg'),
  ];
  List<Discover> getImages() {
    return images;
  }
}
