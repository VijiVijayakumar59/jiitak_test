import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KWidth extends StatelessWidget {
  final double size;

  const KWidth({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * size,
    );
  }
}
