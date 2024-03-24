import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitaktest/utilities/colors/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 175, 183, 253),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 175, 183, 253),
        leading: IconButton(
          color: const Color.fromARGB(255, 181, 139, 220),
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Search screen",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: whiteColor,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 16,
            ),
            child: Icon(
              Icons.remove_circle_outline_sharp,
              color: whiteColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 8,
                left: 8,
                right: 8,
                bottom: 26,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mer kitchen",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: whiteColor,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "current number obtained: ",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: whiteColor,
                        ),
                      ),
                      Text(
                        "30",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: whiteColor,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.height * 0.27,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          color: whiteColor,
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GridView.count(
                              crossAxisCount: 5,
                              mainAxisSpacing: 0.0,
                              crossAxisSpacing: 8.0,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              children: List.generate(
                                15,
                                (index) {
                                  return const Center(
                                    child: Icon(
                                      Icons.verified,
                                      size: 46,
                                      color: Color.fromARGB(255, 248, 187, 137),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "2 / 2 sections",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    const Text(
                      "sections are",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: const Text(
                            '2021 /11 /18',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          subtitle: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Content will be shown here',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: blackColor,
                                ),
                              ),
                              Text(
                                '1day',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: blackColor,
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            // Handle onTap event
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
