import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitaktest/utilities/colors/colors.dart';
import 'package:jiitaktest/utilities/constant_size/constant_height.dart';
import 'package:jiitaktest/view/detailed_screen/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final days = [
      "Sun",
      "Mon",
      "Tue",
      "Wed",
      "thu",
      "Fri",
      "Sat",
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: whiteColor,
          title: const Text(
            "JIITAK",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: blackColor,
            ),
          ),
          actions: const [
            Icon(
              Icons.sort,
              color: Color.fromARGB(255, 99, 95, 95),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.red,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: Get.height * 0.04,
                color: const Color.fromARGB(
                  255,
                  255,
                  203,
                  105,
                ),
                child: const Center(
                  child: Text(
                    "2022-05-26",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 7,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        color: const Color.fromARGB(
                          255,
                          255,
                          203,
                          105,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                days[index],
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                (index + 1).toString(),
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 0,
                  left: 18,
                  right: 18,
                  bottom: 8,
                ),
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Column(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          18,
                                        ),
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnhKC0t7I4dMMsixp2mAy0VhhQ34jEUWKt1NrCYxFpXHqFRcU6ArOnX79-z3jP6SIAbGw",
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      height: Get.height * 0.244,
                                      width: double.infinity,
                                    ),
                                    const KHeight(
                                      size: 0.01,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const TextWidget(
                                            text:
                                                "Good morning everybody, have a nice days,Good morning everybody, have a nice days",
                                          ),
                                          const KHeight(
                                            size: 0.01,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: Get.height * 0.032,
                                                width: Get.width * 0.3,
                                                color: const Color.fromARGB(
                                                    255, 251, 242, 213),
                                                child: const Center(
                                                  child: Text(
                                                    "Morning news",
                                                    style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 255, 131, 7),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const Text(
                                                "₹6,000",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const KHeight(
                                            size: 0.02,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                width: Get.width * 0.6,
                                                child: const Text(
                                                  "Good morning everybody, have a nice days,Good morning everybody, have a nice days",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                  maxLines: 3,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Good morning everybody, have a nice",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              Icon(
                                                Icons.favorite_border,
                                                color: Colors.grey,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 170,
                            child: Container(
                              height: Get.height * 0.032,
                              width: Get.width * 0.2,
                              color: Colors.red,
                              child: const Center(
                                child: Text(
                                  "Morning",
                                  style: TextStyle(
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: Get.height * 0.01,
                      );
                    },
                    itemCount: 3),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: whiteColor,
          onPressed: () {},
          child: const Icon(
            Icons.location_on_outlined,
            size: 30,
            color: blackColor,
          ),
        ),
      ),
    );
  }
}
