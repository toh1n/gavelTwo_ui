import 'package:flutter/material.dart';
import 'package:gaveltwo_ui/ui/utils/color_manager.dart';

class LotCard extends StatelessWidget {
  final String status;
  final String scheduleDate;
  final String lotName;
  final int itemCount;
  final String imageLink;
  final VoidCallback onTap;
  const LotCard({super.key, required this.status, required this.scheduleDate, required this.lotName, required this.itemCount, required this.imageLink, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0,left: 16,right: 16,bottom: 8),
      child: Container(
        height: 274,
        width: double.infinity,
        decoration:  BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imageLink),
                fit: BoxFit.fill
            ),
            borderRadius: BorderRadius.circular(18)
        ),
        child:  Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Container(
                          width: 9,
                          height: 9,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(
                                100),
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(width: 8,),
                         Text(status,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontWeight: FontWeight.normal,
                          ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 11),
                    child: Container(
                      height: 18,
                      width: 65,
                      decoration: BoxDecoration(
                        color: ColorManager.secondaryColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child:  Center(
                        child: Text(
                          scheduleDate,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
               Text(
                lotName,
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 21,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: onTap,
                child: Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),

                  child:  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      Text(
                        "$itemCount",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: ColorManager.secondaryColor,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'LOTS',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight:
                          FontWeight.w500,
                          color: ColorManager.secondaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

            ],
          ),
        ),

      ),
    );
  }
}
