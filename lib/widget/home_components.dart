import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kozarni_appointment/data/utils.dart';
import 'package:kozarni_appointment/model/expert_model.dart';
import 'package:kozarni_appointment/screen/detail_screen.dart';

const BorderRadius _border = BorderRadius.all(
  Radius.circular(8),
);

class HomeCard extends StatelessWidget {
  final int _index;
  final ExpertUpdateModel _expert;
  const HomeCard({
    Key? key,
    required int index,
    required ExpertUpdateModel expert,
  })  : _index = index,
        _expert = expert,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ///Background Photo
        Container(
          width: context.width,
          height: 145,
          decoration: BoxDecoration(
            color: _index % 2 == 0
                ? const Color.fromRGBO(255, 242, 235, 1)
                : const Color.fromRGBO(236, 246, 255, 1),
            borderRadius: _border,
          ),
          alignment: Alignment.bottomRight,
          child: ClipRRect(
            borderRadius: _border,
            child: CachedNetworkImage(
              imageUrl: _expert.profileImage,
            ),
          ),
        ),

        ///Name
        Positioned(
          top: 20,
          left: 20,
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
        Positioned(
          top: 43,
          left: 20,
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
        Positioned(
          top: 60,
          left: 20,
          child: SizedBox(
            width: context.width,
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
        ),

        ///View Profile
        Positioned(
          top: 88,
          left: 20,
          child: _ViewProfile(
            onTap: () {
              ///ToDo
              Get.to(DetailScreen(
                index: _index,
                expert: _expert,
              ));
            },
          ),
        ),
      ],
    );
  }
}

class _ViewProfile extends StatelessWidget {
  final void Function() _onTap;
  const _ViewProfile({Key? key, required void Function() onTap})
      : _onTap = onTap,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 35,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            AppTheme.scaffoldBackground,
          ),
          elevation: MaterialStateProperty.all(0),
        ),
        onPressed: _onTap,
        child: const Text(
          "View Profile",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
