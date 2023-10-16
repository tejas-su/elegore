import 'package:elegore/components/discover_card.dart';
import 'package:elegore/models/discover_model.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DiscoverImage>(
        builder: (context, value, child) => Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        Discover images = value.getImages()[index];
                        return DiscoverCard(
                          images: images,
                        );
                      }),
                )
              ],
            ));
  }
}
