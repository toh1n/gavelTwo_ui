import 'package:flutter/material.dart';
import 'package:gaveltwo_ui/ui/utils/color_manager.dart';

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
            onPressed: (){
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Add other widgets here
            Text('Widget Above GridView'),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index) {
                   return Container(
                     height: 200,
                     width: 166,
                     decoration: BoxDecoration(
                       color: Colors.green,
                       borderRadius: BorderRadius.circular(15)
                     ),
                   );
                  },
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
      // body: SingleChildScrollView(
      //   child: Padding(
      //     padding: const EdgeInsets.only(left: 16.0,right: 16,bottom: 16),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         const Text(
      //           "Watch",
      //           style: TextStyle(
      //               fontSize: 21,
      //               fontWeight: FontWeight.bold
      //           ),
      //         ),
      //         const SizedBox(
      //           height: 5,
      //         ),
      //         RichText(
      //           text: const TextSpan(
      //             style: TextStyle(
      //               fontSize: 13,
      //               height: 1.5, // Adjust the line height here
      //               fontWeight: FontWeight.w300,
      //               color: Colors.black,
      //             ),
      //             children: [
      //               TextSpan(
      //                 text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      //               ),
      //             ],
      //           ),
      //         ),
      //         const SizedBox(height: 10,),
      //         GridView.builder(
      //             itemCount: 10,
      //             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //               crossAxisCount: 2,
      //               childAspectRatio: 1.0,
      //             ),
      //             itemBuilder: (context, index) {
      //               return Card(
      //                 child: Image.network(
      //                   "https://picsum.photos/250?image=${index + 10}",
      //                   width: 100,
      //                   height: 100,
      //                 ),
      //               );
      //             })
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
