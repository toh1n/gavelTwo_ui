import 'package:flutter/material.dart';
import 'package:gaveltwo_ui/ui/utils/color_manager.dart';
import 'package:gaveltwo_ui/ui/utils/image_manager.dart';
import 'package:gaveltwo_ui/ui/widgets/product_card.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.primaryColor,
        toolbarHeight: 35,
        leading: SizedBox(
          height: 25,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 19, right: 22, top: 9),
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Luxury Watch",
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 27,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "35 LOTS",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          children: [
                            const Text(
                              "Sort By",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              ImageManager.upDownPNG,
                              height: 10,
                              width: 11,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 0,
                    childAspectRatio: 176 / 350),
                itemBuilder: (context, index) {
                  return const ProductCard();
                },
                itemCount: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
