import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {

  final String image;

  const ImageSection({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'lib/images/lake.jpeg',
      fit: BoxFit.cover,
      width: 420,
      height: 250,
    );
  }
}
