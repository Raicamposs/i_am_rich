import 'package:flutter/material.dart';

import '../images_path.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I Am Rich'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Image.asset(ImagePath.diamond),
        ),
      ),
    );
  }
}
