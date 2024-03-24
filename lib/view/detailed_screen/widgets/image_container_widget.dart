import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitaktest/utilities/colors/colors.dart';

class ImageContainerWidget extends StatelessWidget {
  const ImageContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Get.height * 0.11,
          width: Get.width * 0.24,
          decoration: BoxDecoration(
            // color: blackColor,
            borderRadius: BorderRadius.circular(
              10,
            ),
            image: const DecorationImage(
              image: NetworkImage(
                "https://img.freepik.com/free-photo/fresh-pasta-with-hearty-bolognese-parmesan-cheese-generated-by-ai_188544-9469.jpg",
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Positioned(
          left: 80,
          top: 8,
          child: Icon(
            Icons.close,
            color: whiteColor,
            size: 20,
          ),
        )
      ],
    );
  }
}
