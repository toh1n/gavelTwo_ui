import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gaveltwo_ui/ui/utils/image_manager.dart';

class ProductDetailsBottomSheet extends StatefulWidget {
  const ProductDetailsBottomSheet({super.key});

  @override
  State<ProductDetailsBottomSheet> createState() =>
      _ProductDetailsBottomSheetState();
}

class _ProductDetailsBottomSheetState extends State<ProductDetailsBottomSheet> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .9,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(25), topLeft: Radius.circular(25)),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(25), topLeft: Radius.circular(25)),
              child: CarouselSlider(
                options: CarouselOptions(
                    aspectRatio: 375 / 475, viewportFraction: 1),
                items: <Image>[
                  Image.asset(
                    ImageManager.car1PNG,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Container(
              margin: const EdgeInsets.only(left: 17, top: 9, right: 15),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Watch",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'DAY-DATE',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 17, top: 9, right: 15),
              height: 5,
              child: const Divider(
                color: Color(0xff71375f),
                thickness: 1,
                endIndent: 10,
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 17, top: 13, right: 23),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Starting Bid',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'AED 25',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Current Bid',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "AED 25",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Increment',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'AED 25',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Time Left',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '5 days',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Bid History',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isOpen = !isOpen;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(0.0),
                          child: const Row(
                            children: [
                              Icon(
                                CupertinoIcons.chevron_down,
                                size: 12,
                                weight: 0.1,
                                color: Color(0xff71375F),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '9 bids',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 1.0,
                                  color: Color(0xff71375F),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Visibility(
              visible: isOpen,
              child: Container(
                margin: const EdgeInsets.only(top: 12),
                padding: const EdgeInsets.only(top: 18, left: 17, right: 17),
                color: const Color(0xfffffef6),
                width: double.infinity,
                child: SingleChildScrollView(
                  physics: const ScrollPhysics(),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Expanded(
                              child: Text(
                            "NAME",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                          Expanded(
                              child: Text(
                            "BID",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                          Expanded(
                              child: Text(
                            "DATE & TIME",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                        ],
                      ),
                      const Divider(
                        color: Color(0xff71375f),
                        thickness: 0.2,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        ImageManager.uaeFlagPNG,
                                        height: 18,
                                        width: 18,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      const Text(
                                        "Shahriar Alam",
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Expanded(
                                  child: Text(
                                    "AED 50,000",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "20 Jun 2023",
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400,
                                          color: Colors
                                              .black, // Set your desired text color here
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "21:00 pm UTC",
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w500,
                                          color: Colors
                                              .black, // Set your desired text color here
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(
                  left: 17, top: 9, right: 15, bottom: 14),
              height: 5,
              child: const Divider(
                color: Color(0xff71375f),
                thickness: 1,
                endIndent: 10,
              ),
            ),

            ElevatedButton(
                onPressed: () {
                  isOpen = !isOpen;
                  setState(() {});
                },
                child: const Text(
                  "VERIFY MY PHONE NUMBER",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )),

            Container(
              margin: const EdgeInsets.only(left: 17, top: 14, right: 15),
              height: 5,
              child: const Divider(
                color: Color(0xff71375f),
                thickness: 1,
                endIndent: 10,
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.only(left: 17, right: 15),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Product Details',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Reference Number',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '18238',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Condition',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'very good',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Scope of Delivery',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Watch with original box',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Year of Production',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Unknown',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Case Diameter',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '30 mm',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Lug Width',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '3 mm',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Movement',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Manual winding',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Description

            Container(
              margin: const EdgeInsets.only(top: 26, bottom: 64),
              padding: const EdgeInsets.only(left: 17, right: 15),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Description',
                        style: TextStyle(
                          color: Color(0xff3C3A3A),
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Manual windLorem ipsum dolor sit amet, consectetur adipiscing elit,"
                    " sed do eiusmod tempor incididunt ut labore et dolore"
                    " magna aliqua. Manual windLorem ipsum dolor sit amet, "
                    "consectetur adipiscing elit, sed do eiusmod tempor incididunt "
                    "ut labore et dolore magna aliqua.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xff3C3A3A),
                      height: 1.8, // Adjust the line height here
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
