import 'package:flutter/material.dart';
import 'package:kozarni_appointment/data/utils.dart';
import 'package:kozarni_appointment/model/expert_model.dart';
import 'package:kozarni_appointment/widget/home_components.dart';
/**
 * Develope By Starlight Studio
 * Home Screen
 */

///Model Sample
const List<ExpertUpdateModel> _home = [
  ExpertUpdateModel(
    name: 'User 1',
    profileImage:
        'https://github.com/rifqieh/salon_booking_app/blob/master/assets/stylist2.png?raw=true',
    coverPhoto:
        "https://github.com/rifqieh/salon_booking_app/blob/master/assets/detail_bg.png?raw=true",
    type: 'Hello',
    rating: '5.0',
    services: [
      ServiceModel(name: 'Service 1', price: 1, subtitle: "sub title 1"),
      ServiceModel(name: 'Service 2', price: 2, subtitle: "sub title 2"),
      ServiceModel(name: 'Service 3', price: 3, subtitle: "sub title 3"),
    ],
    description:
        """Non ut nulla consequat exercitation in veniam voluptate eiusmod commodo ex labore ullamco occaecat. Irure consequat aliquip esse sit. Deserunt ullamco cillum voluptate consequat velit ad cillum cillum. Velit consequat sit voluptate Lorem. Velit elit eiusmod mollit ut est. Aliquip veniam deserunt laborum minim proident est.""",
  ),
  ExpertUpdateModel(
    name: 'User 2',
    profileImage:
        'https://github.com/rifqieh/salon_booking_app/blob/master/assets/stylist1.png?raw=true',
    coverPhoto:
        "https://github.com/rifqieh/salon_booking_app/blob/master/assets/detail_bg.png?raw=true",
    type: 'Hello',
    rating: '4.0',
    services: [
      ServiceModel(name: 'Service 1', price: 1, subtitle: "sub title 1"),
      ServiceModel(name: 'Service 2', price: 2, subtitle: "sub title 2"),
      ServiceModel(name: 'Service 3', price: 3, subtitle: "sub title 3"),
    ],
    description:
        """Non ut nulla consequat exercitation in veniam voluptate eiusmod commodo ex labore ullamco occaecat. Irure consequat aliquip esse sit. Deserunt ullamco cillum voluptate consequat velit ad cillum cillum. Velit consequat sit voluptate Lorem. Velit elit eiusmod mollit ut est. Aliquip veniam deserunt laborum minim proident est.""",
  ),
  ExpertUpdateModel(
    name: 'User 3',
    profileImage:
        'https://github.com/rifqieh/salon_booking_app/blob/master/assets/stylist3.png?raw=true',
    coverPhoto:
        "https://github.com/rifqieh/salon_booking_app/blob/master/assets/detail_bg.png?raw=true",
    type: 'Hello',
    rating: '3.8',
    services: [
      ServiceModel(name: 'Service 1', price: 1, subtitle: "sub title 1"),
      ServiceModel(name: 'Service 2', price: 2, subtitle: "sub title 2"),
      ServiceModel(name: 'Service 3', price: 3, subtitle: "sub title 3"),
    ],
    description:
        """Non ut nulla consequat exercitation in veniam voluptate eiusmod commodo ex labore ullamco occaecat. Irure consequat aliquip esse sit. Deserunt ullamco cillum voluptate consequat velit ad cillum cillum. Velit consequat sit voluptate Lorem. Velit elit eiusmod mollit ut est. Aliquip veniam deserunt laborum minim proident est.""",
  ),
  ExpertUpdateModel(
    name: 'User 4',
    profileImage:
        'https://github.com/rifqieh/salon_booking_app/blob/master/assets/stylist2.png?raw=true',
    coverPhoto:
        "https://github.com/rifqieh/salon_booking_app/blob/master/assets/detail_bg.png?raw=true",
    type: 'Hello',
    rating: '5.0',
    services: [
      ServiceModel(name: 'Service 1', price: 1, subtitle: "sub title 1"),
      ServiceModel(name: 'Service 2', price: 2, subtitle: "sub title 2"),
      ServiceModel(name: 'Service 3', price: 3, subtitle: "sub title 3"),
    ],
    description:
        """Non ut nulla consequat exercitation in veniam voluptate eiusmod commodo ex labore ullamco occaecat. Irure consequat aliquip esse sit. Deserunt ullamco cillum voluptate consequat velit ad cillum cillum. Velit consequat sit voluptate Lorem. Velit elit eiusmod mollit ut est. Aliquip veniam deserunt laborum minim proident est.""",
  ),
  ExpertUpdateModel(
    name: 'User 5',
    profileImage:
        'https://github.com/rifqieh/salon_booking_app/blob/master/assets/stylist1.png?raw=true',
    coverPhoto:
        "https://github.com/rifqieh/salon_booking_app/blob/master/assets/detail_bg.png?raw=true",
    type: 'Hello',
    rating: '4.0',
    services: [
      ServiceModel(name: 'Service 1', price: 1, subtitle: "sub title 1"),
      ServiceModel(name: 'Service 2', price: 2, subtitle: "sub title 2"),
      ServiceModel(name: 'Service 3', price: 3, subtitle: "sub title 3"),
    ],
    description:
        """Non ut nulla consequat exercitation in veniam voluptate eiusmod commodo ex labore ullamco occaecat. Irure consequat aliquip esse sit. Deserunt ullamco cillum voluptate consequat velit ad cillum cillum. Velit consequat sit voluptate Lorem. Velit elit eiusmod mollit ut est. Aliquip veniam deserunt laborum minim proident est.""",
  ),
  ExpertUpdateModel(
    name: 'User 6',
    profileImage:
        'https://github.com/rifqieh/salon_booking_app/blob/master/assets/stylist3.png?raw=true',
    coverPhoto:
        "https://github.com/rifqieh/salon_booking_app/blob/master/assets/detail_bg.png?raw=true",
    type: 'Hello',
    rating: '3.8',
    services: [
      ServiceModel(name: 'Service 1', price: 1, subtitle: "sub title 1"),
      ServiceModel(name: 'Service 2', price: 2, subtitle: "sub title 2"),
      ServiceModel(name: 'Service 3', price: 3, subtitle: "sub title 3"),
    ],
    description:
        """Non ut nulla consequat exercitation in veniam voluptate eiusmod commodo ex labore ullamco occaecat. Irure consequat aliquip esse sit. Deserunt ullamco cillum voluptate consequat velit ad cillum cillum. Velit consequat sit voluptate Lorem. Velit elit eiusmod mollit ut est. Aliquip veniam deserunt laborum minim proident est.""",
  ),
  ExpertUpdateModel(
    name: 'User 1',
    profileImage:
        'https://github.com/rifqieh/salon_booking_app/blob/master/assets/stylist2.png?raw=true',
    coverPhoto:
        "https://github.com/rifqieh/salon_booking_app/blob/master/assets/detail_bg.png?raw=true",
    type: 'Hello',
    rating: '5.0',
    services: [
      ServiceModel(name: 'Service 1', price: 1, subtitle: "sub title 1"),
      ServiceModel(name: 'Service 2', price: 2, subtitle: "sub title 2"),
      ServiceModel(name: 'Service 3', price: 3, subtitle: "sub title 3"),
    ],
    description:
        """Non ut nulla consequat exercitation in veniam voluptate eiusmod commodo ex labore ullamco occaecat. Irure consequat aliquip esse sit. Deserunt ullamco cillum voluptate consequat velit ad cillum cillum. Velit consequat sit voluptate Lorem. Velit elit eiusmod mollit ut est. Aliquip veniam deserunt laborum minim proident est.""",
  ),
  ExpertUpdateModel(
    name: 'User 2',
    profileImage:
        'https://github.com/rifqieh/salon_booking_app/blob/master/assets/stylist1.png?raw=true',
    coverPhoto:
        "https://github.com/rifqieh/salon_booking_app/blob/master/assets/detail_bg.png?raw=true",
    type: 'Hello',
    rating: '4.0',
    services: [
      ServiceModel(name: 'Service 1', price: 1, subtitle: "sub title 1"),
      ServiceModel(name: 'Service 2', price: 2, subtitle: "sub title 2"),
      ServiceModel(name: 'Service 3', price: 3, subtitle: "sub title 3"),
    ],
    description:
        """Non ut nulla consequat exercitation in veniam voluptate eiusmod commodo ex labore ullamco occaecat. Irure consequat aliquip esse sit. Deserunt ullamco cillum voluptate consequat velit ad cillum cillum. Velit consequat sit voluptate Lorem. Velit elit eiusmod mollit ut est. Aliquip veniam deserunt laborum minim proident est.""",
  ),
  ExpertUpdateModel(
    name: 'User 3',
    profileImage:
        'https://github.com/rifqieh/salon_booking_app/blob/master/assets/stylist3.png?raw=true',
    coverPhoto:
        "https://github.com/rifqieh/salon_booking_app/blob/master/assets/detail_bg.png?raw=true",
    type: 'Hello',
    rating: '3.8',
    services: [
      ServiceModel(name: 'Service 1', price: 1, subtitle: "sub title 1"),
      ServiceModel(name: 'Service 2', price: 2, subtitle: "sub title 2"),
      ServiceModel(name: 'Service 3', price: 3, subtitle: "sub title 3"),
    ],
    description:
        """Non ut nulla consequat exercitation in veniam voluptate eiusmod commodo ex labore ullamco occaecat. Irure consequat aliquip esse sit. Deserunt ullamco cillum voluptate consequat velit ad cillum cillum. Velit consequat sit voluptate Lorem. Velit elit eiusmod mollit ut est. Aliquip veniam deserunt laborum minim proident est.""",
  ),
  ExpertUpdateModel(
    name: 'User 4',
    profileImage:
        'https://github.com/rifqieh/salon_booking_app/blob/master/assets/stylist2.png?raw=true',
    coverPhoto:
        "https://github.com/rifqieh/salon_booking_app/blob/master/assets/detail_bg.png?raw=true",
    type: 'Hello',
    rating: '5.0',
    services: [
      ServiceModel(name: 'Service 1', price: 1, subtitle: "sub title 1"),
      ServiceModel(name: 'Service 2', price: 2, subtitle: "sub title 2"),
      ServiceModel(name: 'Service 3', price: 3, subtitle: "sub title 3"),
    ],
    description:
        """Non ut nulla consequat exercitation in veniam voluptate eiusmod commodo ex labore ullamco occaecat. Irure consequat aliquip esse sit. Deserunt ullamco cillum voluptate consequat velit ad cillum cillum. Velit consequat sit voluptate Lorem. Velit elit eiusmod mollit ut est. Aliquip veniam deserunt laborum minim proident est.""",
  ),
  ExpertUpdateModel(
    name: 'User 5',
    profileImage:
        'https://github.com/rifqieh/salon_booking_app/blob/master/assets/stylist1.png?raw=true',
    coverPhoto:
        "https://github.com/rifqieh/salon_booking_app/blob/master/assets/detail_bg.png?raw=true",
    type: 'Hello',
    rating: '4.0',
    services: [
      ServiceModel(name: 'Service 1', price: 1, subtitle: "sub title 1"),
      ServiceModel(name: 'Service 2', price: 2, subtitle: "sub title 2"),
      ServiceModel(name: 'Service 3', price: 3, subtitle: "sub title 3"),
    ],
    description:
        """Non ut nulla consequat exercitation in veniam voluptate eiusmod commodo ex labore ullamco occaecat. Irure consequat aliquip esse sit. Deserunt ullamco cillum voluptate consequat velit ad cillum cillum. Velit consequat sit voluptate Lorem. Velit elit eiusmod mollit ut est. Aliquip veniam deserunt laborum minim proident est.""",
  ),
  ExpertUpdateModel(
    name: 'User 6',
    profileImage:
        'https://github.com/rifqieh/salon_booking_app/blob/master/assets/stylist3.png?raw=true',
    coverPhoto:
        "https://github.com/rifqieh/salon_booking_app/blob/master/assets/detail_bg.png?raw=true",
    type: 'Hello',
    rating: '3.8',
    services: [
      ServiceModel(name: 'Service 1', price: 1, subtitle: "sub title 1"),
      ServiceModel(name: 'Service 2', price: 2, subtitle: "sub title 2"),
      ServiceModel(name: 'Service 3', price: 3, subtitle: "sub title 3"),
    ],
    description:
        """Non ut nulla consequat exercitation in veniam voluptate eiusmod commodo ex labore ullamco occaecat. Irure consequat aliquip esse sit. Deserunt ullamco cillum voluptate consequat velit ad cillum cillum. Velit consequat sit voluptate Lorem. Velit elit eiusmod mollit ut est. Aliquip veniam deserunt laborum minim proident est.""",
  ),
];

///Home Screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.scaffoldBackground,
      body: NotificationListener(
        onNotification: context.overScroll,
        child: NestedScrollView(
          floatHeaderSlivers: true,
          physics: const AlwaysScrollableScrollPhysics(),
          headerSliverBuilder: (_, isOpen) => [
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: AppTheme.scaffoldBackground,
              actions: [
                IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    ///ToDo
                  },
                  icon: const Icon(Icons.search),
                )
              ],
            ),
          ],
          body: SafeArea(
            child: Container(
              width: context.width,
              height: context.height,
              padding: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                color: AppTheme.backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 20,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Hair Stylist",
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      itemExtent: 160,
                      itemCount: _home.length,
                      itemBuilder: (_, i) => HomeCard(
                        index: i,
                        expert: _home[i],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
