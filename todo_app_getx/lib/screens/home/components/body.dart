import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    

    return SafeArea(
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}

