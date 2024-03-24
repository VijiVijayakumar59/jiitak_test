import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jiitaktest/utilities/colors/colors.dart';
import 'package:jiitaktest/utilities/constant_size/constant_height.dart';
import 'package:jiitaktest/utilities/constant_size/constant_width.dart';
import 'package:jiitaktest/view/detailed_screen/widgets/image_container_widget.dart';
import 'package:jiitaktest/view/detailed_screen/widgets/text_form_widget.dart';
import 'package:jiitaktest/view/detailed_screen/widgets/text_widget.dart';

class DetailedScreen extends StatefulWidget {
  const DetailedScreen({super.key});

  @override
  State<DetailedScreen> createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  //===========Google map===========//
  late GoogleMapController mapController;

  final LatLng center = const LatLng(45.521563, -122.677433);

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  //=======dropdown===========//
  String dropdownvalue = '10 : 00';
  var items = ['10 : 00', '11 : 00', '12 : 00'];
  String dropdownvalueTwo = 'valueone';
  var itemsTwo = ['valueone', 'two', 'three'];

  //==========check box===========//
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        leading: IconButton.filled(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.grey,
          ),
        ),
        title: const Center(
          child: Text(
            "Detailed screen",
            style: TextStyle(
              fontSize: 19,
              color: blackColor,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 16,
            ),
            child: Icon(
              Icons.notifications_outlined,
              size: 26,
              color: blackColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextWidget(
                text: "Name*",
              ),
              const TextFormWidget(
                hintText: "Mer Kitchen",
              ),
              const KHeight(size: 0.022),
              const TextWidget(
                text: "Name*",
              ),
              const TextFormWidget(
                hintText: "Mer Kitchen",
              ),
              const KHeight(size: 0.022),
              const TextWidget(
                text: "Name*",
              ),
              const TextFormWidget(
                hintText: "Mer Kitchen",
              ),
              const KHeight(size: 0.022),
              const TextWidget(
                text: "Name*",
              ),
              const TextFormWidget(
                hintText: "Mer Kitchen",
              ),
              const KHeight(size: 0.022),
              //============Google map=============//
              Container(
                height: Get.height * 0.248,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: blackColor,
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://i.stack.imgur.com/HILmr.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
              ),
              const KHeight(
                size: 0.02,
              ),
              const Row(
                children: [
                  TextWidget(
                    text: "Images*",
                  ),
                  Text(
                    "(Gallery)",
                    style: TextStyle(
                      color: Color.fromARGB(
                        255,
                        143,
                        139,
                        139,
                      ),
                    ),
                  ),
                ],
              ),
              const KHeight(size: 0.01),
              Row(
                children: [
                  const ImageContainerWidget(),
                  const KWidth(size: 0.025),
                  const ImageContainerWidget(),
                  const KWidth(size: 0.025),
                  Stack(
                    children: [
                      Container(
                        height: Get.height * 0.09,
                        width: Get.width * 0.18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          image: const DecorationImage(
                            image: NetworkImage(
                              "https://media.istockphoto.com/id/1980276924/vector/no-photo-thumbnail-graphic-element-no-found-or-available-image-in-the-gallery-or-album-flat.jpg?s=612x612&w=0&k=20&c=ZBE3NqfzIeHGDPkyvulUw14SaWfDj2rZtyiKv3toItk=",
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 14,
                        top: 54,
                        child: Text("Gallery"),
                      )
                    ],
                  ),
                ],
              ),
              const KHeight(
                size: 0.02,
              ),
              const Row(
                children: [
                  TextWidget(
                    text: "Images*",
                  ),
                  Text(
                    "(Gallery)",
                    style: TextStyle(
                      color: Color.fromARGB(
                        255,
                        143,
                        139,
                        139,
                      ),
                    ),
                  ),
                ],
              ),
              const KHeight(size: 0.01),
              const Row(
                children: [
                  ImageContainerWidget(),
                  KWidth(size: 0.025),
                  ImageContainerWidget(),
                  KWidth(size: 0.025),
                  ImageContainerWidget(),
                ],
              ),
              const KHeight(
                size: 0.02,
              ),
              const Row(
                children: [
                  TextWidget(
                    text: "Images*",
                  ),
                  Text(
                    "(Gallery)",
                    style: TextStyle(
                      color: Color.fromARGB(
                        255,
                        143,
                        139,
                        139,
                      ),
                    ),
                  ),
                ],
              ),
              const KHeight(size: 0.01),
              const Row(
                children: [
                  ImageContainerWidget(),
                  KWidth(size: 0.025),
                  ImageContainerWidget(),
                  KWidth(size: 0.025),
                  ImageContainerWidget(),
                ],
              ),
              const KHeight(
                size: 0.02,
              ),
              const Row(
                children: [
                  TextWidget(
                    text: "Images*",
                  ),
                  Text(
                    "(Gallery)",
                    style: TextStyle(
                      color: Color.fromARGB(
                        255,
                        143,
                        139,
                        139,
                      ),
                    ),
                  ),
                ],
              ),
              const KHeight(size: 0.01),
              const Row(
                children: [
                  ImageContainerWidget(),
                  KWidth(size: 0.025),
                  ImageContainerWidget(),
                  KWidth(size: 0.025),
                  ImageContainerWidget(),
                ],
              ),
              const KHeight(size: 0.02),
              const TextWidget(text: "Time"),
              const KHeight(size: 0.01),
              Row(
                children: [
                  Container(
                    height: Get.height * 0.045,
                    width: Get.width * 0.3,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                  const KWidth(size: 0.02),
                  const Text(
                    "~",
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  const KWidth(size: 0.02),
                  Container(
                    height: Get.height * 0.045,
                    width: Get.width * 0.3,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const KHeight(size: 0.02),
              const TextWidget(text: "Time"),
              const KHeight(size: 0.01),
              Row(
                children: [
                  Container(
                    height: Get.height * 0.045,
                    width: Get.width * 0.3,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                  const KWidth(size: 0.02),
                  const Text(
                    "~",
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  const KWidth(size: 0.02),
                  Container(
                    height: Get.height * 0.045,
                    width: Get.width * 0.3,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const KHeight(size: 0.02),
              const TextWidget(text: "Time"),
              Row(
                children: [
                  Checkbox(
                    checkColor: whiteColor,
                    activeColor: const Color.fromARGB(255, 243, 139, 2),
                    value: value,
                    onChanged: (bool? newValue) {
                      setState(() {
                        value = newValue ?? false;
                      });
                    },
                  ),
                  const TextWidget(text: "sun"),
                  Checkbox(
                    checkColor: whiteColor,
                    activeColor: const Color.fromARGB(255, 243, 139, 2),
                    value: value,
                    onChanged: (bool? newValue) {
                      setState(() {
                        value = newValue ?? false;
                      });
                    },
                  ),
                  const TextWidget(text: "sun"),
                  Checkbox(
                    checkColor: whiteColor,
                    activeColor: const Color.fromARGB(255, 243, 139, 2),
                    value: value,
                    onChanged: (bool? newValue) {
                      setState(() {
                        value = newValue ?? false;
                      });
                    },
                  ),
                  const TextWidget(text: "sun"),
                  Checkbox(
                    checkColor: whiteColor,
                    activeColor: const Color.fromARGB(255, 243, 139, 2),
                    value: value,
                    onChanged: (bool? newValue) {
                      setState(() {
                        value = newValue ?? false;
                      });
                    },
                  ),
                  const TextWidget(text: "sun")
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: whiteColor,
                    activeColor: const Color.fromARGB(255, 243, 139, 2),
                    value: value,
                    onChanged: (bool? newValue) {
                      setState(() {
                        value = newValue ?? false;
                      });
                    },
                  ),
                  const TextWidget(text: "sun"),
                  Checkbox(
                    checkColor: whiteColor,
                    activeColor: const Color.fromARGB(255, 243, 139, 2),
                    value: value,
                    onChanged: (bool? newValue) {
                      setState(() {
                        value = newValue ?? false;
                      });
                    },
                  ),
                  const TextWidget(text: "sun"),
                  Checkbox(
                    checkColor: whiteColor,
                    activeColor: const Color.fromARGB(255, 243, 139, 2),
                    value: value,
                    onChanged: (bool? newValue) {
                      setState(() {
                        value = newValue ?? false;
                      });
                    },
                  ),
                  const TextWidget(text: "sun"),
                  Checkbox(
                    checkColor: whiteColor,
                    activeColor: const Color.fromARGB(255, 243, 139, 2),
                    value: value,
                    onChanged: (bool? newValue) {
                      setState(() {
                        value = newValue ?? false;
                      });
                    },
                  ),
                  const TextWidget(text: "sun")
                ],
              ),
              const KHeight(size: 0.02),
              const TextWidget(text: "Time"),
              const KHeight(size: 0.01),
              Container(
                height: Get.height * 0.046,
                width: Get.width * 0.4,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Center(
                  child: DropdownButton<String>(
                    value: dropdownvalueTwo,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: itemsTwo.map((String itemsTwo) {
                      return DropdownMenuItem(
                        value: itemsTwo,
                        child: Text(itemsTwo),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalueTwo = newValue!;
                      });
                    },
                  ),
                ),
              ),
              const KHeight(size: 0.02),
              const TextWidget(text: "Time"),
              const KHeight(size: 0.01),
              Row(
                children: [
                  Container(
                    height: Get.height * 0.046,
                    width: Get.width * 0.38,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: const Center(
                      child: TextWidget(
                        text: "₹1,000",
                      ),
                    ),
                  ),
                  const KWidth(size: 0.02),
                  const Text(
                    "~",
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  const KWidth(size: 0.02),
                  Container(
                    height: Get.height * 0.046,
                    width: Get.width * 0.38,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: const Center(
                      child: TextWidget(
                        text: "₹2,000",
                      ),
                    ),
                  ),
                ],
              ),
              const KHeight(size: 0.02),
              const TextWidget(text: "Time"),
              const KHeight(size: 0.01),
              const TextFormWidget(hintText: "Text will be shown here"),
              const KHeight(size: 0.01),
              const TextWidget(text: "Time"),
              const KHeight(size: 0.01),
              const TextFormWidget(hintText: "40 days"),
              const KHeight(size: 0.01),
              const TextWidget(text: "Time"),
              const KHeight(size: 0.01),
              Row(
                children: [
                  Checkbox(
                    checkColor: whiteColor,
                    activeColor: const Color.fromARGB(255, 243, 139, 2),
                    value: value,
                    onChanged: (bool? newValue) {
                      setState(() {
                        value = newValue ?? false;
                      });
                    },
                  ),
                  const TextWidget(text: "sun"),
                  Checkbox(
                    checkColor: whiteColor,
                    activeColor: const Color.fromARGB(255, 243, 139, 2),
                    value: value,
                    onChanged: (bool? newValue) {
                      setState(() {
                        value = newValue ?? false;
                      });
                    },
                  ),
                  const TextWidget(text: "sun"),
                ],
              ),
              const KHeight(size: 0.01),
              const TextWidget(text: "Time"),
              const KHeight(size: 0.01),
              Row(
                children: [
                  Checkbox(
                    checkColor: whiteColor,
                    activeColor: const Color.fromARGB(255, 243, 139, 2),
                    value: value,
                    onChanged: (bool? newValue) {
                      setState(() {
                        value = newValue ?? false;
                      });
                    },
                  ),
                  const TextWidget(text: "sun"),
                  Checkbox(
                    checkColor: whiteColor,
                    activeColor: const Color.fromARGB(255, 243, 139, 2),
                    value: value,
                    onChanged: (bool? newValue) {
                      setState(() {
                        value = newValue ?? false;
                      });
                    },
                  ),
                  const TextWidget(text: "sun"),
                ],
              ),
              const KHeight(size: 0.01),
              const TextWidget(text: "Time"),
              const KHeight(size: 0.01),
              Row(
                children: [
                  Checkbox(
                    checkColor: whiteColor,
                    activeColor: const Color.fromARGB(255, 243, 139, 2),
                    value: value,
                    onChanged: (bool? newValue) {
                      setState(() {
                        value = newValue ?? false;
                      });
                    },
                  ),
                  const TextWidget(text: "food to have"),
                  Checkbox(
                    checkColor: whiteColor,
                    activeColor: const Color.fromARGB(255, 243, 139, 2),
                    value: value,
                    onChanged: (bool? newValue) {
                      setState(() {
                        value = newValue ?? false;
                      });
                    },
                  ),
                  const TextWidget(text: "sun"),
                ],
              ),
              const KHeight(size: 0.01),

              const Row(
                children: [
                  ImageContainerWidget(),
                  KWidth(size: 0.025),
                  ImageContainerWidget(),
                  KWidth(size: 0.025),
                  ImageContainerWidget(),
                ],
              ),
              const KHeight(size: 0.01),
              const TextWidget(text: "Time"),
              const KHeight(size: 0.01),
              const TextFormWidget(hintText: "Text will be shown here"),
              const KHeight(size: 0.02),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 160,
                      vertical: 13,
                    ),
                    backgroundColor: const Color.fromARGB(255, 255, 158, 31),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Save",
                  ),
                ),
              ),
              //
              const KHeight(size: 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
