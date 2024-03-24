import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KHeight extends StatelessWidget {
  final double size;

  const KHeight({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * size,
    );
  }
}
