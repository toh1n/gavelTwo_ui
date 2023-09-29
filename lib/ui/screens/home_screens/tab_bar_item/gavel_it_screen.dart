import 'package:flutter/material.dart';
import 'package:gaveltwo_ui/data/models/lot_model.dart';
import 'package:gaveltwo_ui/ui/screens/product_list_screen.dart';
import 'package:gaveltwo_ui/ui/utils/image_manager.dart';
import 'package:gaveltwo_ui/ui/widgets/lot_card.dart';

class GaveledItScreen extends StatefulWidget {
  const GaveledItScreen({super.key});

  @override
  State<GaveledItScreen> createState() => _GaveledItScreenState();
}

class _GaveledItScreenState extends State<GaveledItScreen> {
  List<LotModel> lot = [
    LotModel(
        "Luxury Watches", 35, "8-9 May", "Running", ImageManager.watch1PNG),
    LotModel("Exotic Car", 30, "8-9 May", "Running", ImageManager.car1PNG),
    LotModel(
        "Luxury Watches", 15, "8-9 May", "Running", ImageManager.watch1PNG),
    LotModel("Exotic Car", 30, "8-9 May", "Running", ImageManager.car1PNG),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const ProductListScreen()));
          },
          child: LotCard(
            lotName: lot[index].lotName,
            itemCount: lot[index].itemCount,
            scheduleDate: lot[index].scheduleDate,
            status: lot[index].status,
            imageLink: lot[index].imageLink,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ProductListScreen()));
            },
          ),
        );
      },
      itemCount: lot.length,
    );
  }
}
