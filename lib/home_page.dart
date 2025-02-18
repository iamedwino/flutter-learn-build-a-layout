import 'package:flutter/material.dart';
import 'package:practicing/components/button_section.dart';
import 'package:practicing/components/image_section.dart';
import 'package:practicing/components/text_section.dart';
import 'package:practicing/components/tile_section.dart';

class HomePage extends StatefulWidget {


  const HomePage({
    super.key,
    // required this.name,
    // required this.location,
  });

  // final String name;
  // final String location;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'L O A D I N G',
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageSection(
                image: 'lib/images/lake.jpeg',
            ),

            TileSection(
                name: "Oeschinen Lake Campground",
                location: "Kandersteg, Switzerland"
            ),
            ButtonSection(),

            TextSection(
                description:
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                    'Bernese Alps. Situated 1,578 meters above sea level, it '
                    'is one of the larger Alpine Lakes. A gondola ride from '
                    'Kandersteg, followed by a half-hour walk through pastures '
                    'and pine forest, leads you to the lake, which warms to 20 '
                    'degrees Celsius in the summer. Activities enjoyed here '
                    'include rowing, and riding the summer toboggan run.',
            ),
          ],
        ),
      ),
    );
  }
}
