import 'package:flutter/material.dart';
import 'package:gaveltwo_ui/ui/utils/color_manager.dart';
import 'package:gaveltwo_ui/ui/utils/image_manager.dart';
import 'package:gaveltwo_ui/ui/widgets/product_details_bottom_sheet.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
            ),
            backgroundColor: ColorManager.primaryColor,
            context: context,
            builder: (_) {
              return const ProductDetailsBottomSheet();
            });
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              ImageManager.watch1PNG,
              height: 210,
              fit: BoxFit.fill,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 5, top: 4),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'DAY-DATE',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "STARTING BID",
                      style:
                      TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'AED 50000',
                      style:
                      TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Current BID",
                      style:
                      TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'AED 30000',
                      style:
                      TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TIME LEFT",
                      style:
                      TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '7 DAYS',
                      style:
                      TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
