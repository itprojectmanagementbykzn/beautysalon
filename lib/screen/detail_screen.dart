import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kozarni_appointment/data/utils.dart';
import 'package:kozarni_appointment/model/expert_model.dart';
import 'package:kozarni_appointment/widget/detail_components.dart';

void _back() => Get.back();

class DetailScreen extends StatelessWidget {
  final int _index;
  final ExpertUpdateModel _expert;
  const DetailScreen({
    Key? key,
    required int index,
    required ExpertUpdateModel expert,
  })  : _index = index,
        _expert = expert,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: context.width,
        height: context.height,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            ///Cover Photo
            SizedBox(
              width: context.width,
              height: 250,
              child: CachedNetworkImage(
                imageUrl: _expert.coverPhoto,
                width: context.width,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),

            ///App Bar Buttons
            Positioned(
              top: context.topSafe + 20,
              left: 0,
              child: const IconButton(
                splashRadius: 20,
                onPressed: _back,
                icon: Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                ),
              ),
            ),

            ///Body
            Positioned(
              top: 140,
              child: SizedBox(
                width: context.width,
                height: context.height - 140,
                child: Stack(
                  children: [
                    ///Body
                    Positioned(
                      top: 70,
                      child: Container(
                        width: context.width,
                        height: context.height - 200,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ///Name
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 140,
                                right: 20,
                              ),
                              child: Text(
                                _expert.name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ),

                            ///Type
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 140,
                                right: 20,
                              ),
                              child: Text(
                                _expert.type,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),

                            ///Rating
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 140,
                                right: 20,
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star_rate,
                                    size: 14,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Expanded(
                                    child: Text(
                                      _expert.rating,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            ///Service List
                            const Padding(
                              padding: EdgeInsets.all(20),
                              child: Text(
                                "Service List",
                                style: TextStyle(
                                  fontSize: 20,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                            ///Body
                            Expanded(
                              child: NotificationListener(
                                onNotification: context.overScroll,
                                child: ListView.builder(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  itemExtent: 60,
                                  itemCount: _expert.services.length,
                                  itemBuilder: (_, i) => ServiceCard(
                                    service: _expert.services[i],
                                    onPressed: () {
                                      ///ToDo
                                    },
                                  ),
                                ),
                              ),
                            ),

                            ///Description
                            Container(
                              width: context.width,
                              height: 100,
                              margin: const EdgeInsets.all(20),
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                color: AppTheme.scaffoldBackground,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(7),
                                ),
                              ),
                              child: Text(
                                _expert.description,
                                style: const TextStyle(
                                  color: Colors.white70,
                                ),
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    ///Profile Photo
                    Positioned(
                      top: 0,
                      left: 20,
                      child: Container(
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                          color: _index % 2 == 0
                              ? const Color.fromRGBO(255, 242, 235, 1)
                              : const Color.fromRGBO(236, 246, 255, 1),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: ClipRRect(
                          child: CachedNetworkImage(
                            imageUrl: _expert.profileImage,
                            width: 100,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    ///Favorite Button
                    Positioned(
                      top: 53,
                      right: 20,
                      child: InkWell(
                        onTap: () {
                          ///ToDo
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 1),
                                color: Colors.grey,
                                spreadRadius: 0.2,
                              )
                            ],
                          ),
                          child: const Icon(Icons.favorite_border),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
