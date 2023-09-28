import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gaveltwo_ui/ui/utils/image_manager.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet(
            // isScrollControlled: true,
          isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
            ),
            context: context,
            builder: (context){
          return  SizedBox(
            height: MediaQuery.of(context).size.height * .8,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        disableCenter: true,
                        viewportFraction: 1,

                      ),
                      items: <Image> [
                        Image.asset(ImageManager.watch1PNG),
                        Image.asset(ImageManager.watch1PNG),
                        Image.asset(ImageManager.watch1PNG),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          );
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
          Container(
            margin: const EdgeInsets.only(left: 5,top: 9),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "widget.choice.name",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    SizedBox(height: 4,),
                    Text('DAY-DATE',style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 5,top: 10),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("STARTING BID",style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400
                    ),),
                    Text('AED ',style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 5,top: 4),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Current BID",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    Text(
                      'AED ',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 5,top: 4),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("TIME LEFT",style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400
                    ),),
                    Text('7 DAYS',style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400
                      ),
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
