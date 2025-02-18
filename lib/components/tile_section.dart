import 'package:flutter/material.dart';
import 'package:practicing/components/favorite_widget.dart';

class TileSection extends StatelessWidget {
  const TileSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            // 1 //
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 2 //
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    location,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              )
          ),
          // 3 //
          FavoriteWidget(),
        ],
      ),
    );
  }
}
