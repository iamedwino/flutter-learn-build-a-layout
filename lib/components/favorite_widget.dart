import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoritedCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoritedCount -= 1;
        _isFavorited = false;
      } else {
        _favoritedCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
              padding: const EdgeInsets.all(0),
              //alignment: Alignmemt.center,
              onPressed: _toggleFavorite,
              icon: (
                  _isFavorited
                  ? const Icon(Icons.star)
                  : const Icon(Icons.star_border)
              ),
            color: Colors.red[500],
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoritedCount'),
          ),
        ),
      ],
    );
  }
}
