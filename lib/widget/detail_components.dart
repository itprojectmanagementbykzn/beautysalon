import 'package:flutter/material.dart';
import 'package:kozarni_appointment/data/utils.dart';
import 'package:kozarni_appointment/model/expert_model.dart';

class ServiceCard extends StatelessWidget {
  final ServiceModel _service;
  final void Function() _onPressed;
  const ServiceCard({
    Key? key,
    required ServiceModel service,
    required void Function() onPressed,
  })  : _service = service,
        _onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ///Service Detail
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _service.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.2,
                  ),
                ),
                Text(
                  _service.subtitle,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),

          ///Price
          Expanded(
            child: Text(
              "\$${_service.price}",
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          ///Button
          ElevatedButton(
            onPressed: _onPressed,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                AppTheme.buttonColor,
              ),
              elevation: MaterialStateProperty.all(0),
            ),
            child: const Text("Cart"),
          ),
        ],
      ),
    );
  }
}
