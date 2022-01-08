/**
 * Develope By Starlight Studio
 * Expert Model 
 * @type ExpertUpdateModel
 * Service 
 * @type Service
 */

///Expert Model [ExpertUpdateModel]
class ExpertUpdateModel {
  final String _name;
  final String _profileImage;
  final String _coverPhoto;
  final String _type;
  final String _rating;
  final List<ServiceModel> _services;
  final String _description;

  ///if you don't need, you can comment !
  final DateTime? _createdAt;

  ///if you don't need, you can comment !
  final DateTime? _updatedAt;

  const ExpertUpdateModel({
    required String name,
    required String coverPhoto,
    required String profileImage,
    required String type,
    required String rating,
    required List<ServiceModel> services,
    required String description,

    ///if you don't need, you can comment !
    DateTime? createdAt,

    ///if you don't need, you can comment !
    DateTime? updatedAt,
  })  : _name = name,
        _profileImage = profileImage,
        _coverPhoto = coverPhoto,
        _type = type,
        _rating = rating,
        _services = services,
        _description = description,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  String get name => _name;
  String get profileImage => _profileImage;
  String get coverPhoto => _coverPhoto;
  String get type => _type;
  String get rating => _rating;
  List<ServiceModel> get services => _services;
  String get description => _description;
  DateTime? get createdAt => _createdAt;
  DateTime? get updatedAt => _updatedAt;

  ///if you want to add created or updated you can easily add it!
  factory ExpertUpdateModel.fromJson(Map<String, dynamic> json) =>
      ExpertUpdateModel(
        name: json["name"],
        profileImage: json["profileImage"],
        coverPhoto: json["coverPhoto"],
        type: json["type"],
        rating: json["rating"],
        services: (json["service"] as List<Map<String, dynamic>>)
            .map((e) => ServiceModel.fromJson(e))
            .toList(),
        description: json["description"],
      );

  ///if you want to add created or updated you can easily add it!
  ExpertUpdateModel copy({
    String? name,
    String? profileImage,
    String? coverPhoto,
    String? type,
    String? rating,
    List<ServiceModel>? services,
    String? description,
  }) =>
      ExpertUpdateModel(
        name: name ?? _name,
        profileImage: profileImage ?? _profileImage,
        coverPhoto: coverPhoto ?? _coverPhoto,
        type: type ?? _type,
        rating: rating ?? _rating,
        services: services ?? _services,
        description: description ?? _description,
      );

  ///if you want to add created or updated you can easily add it!
  Map<String, dynamic> toJson() => {
        "name": name,
        "profileImage": profileImage,
        "coverPhoto": coverPhoto,
        "type": type,
        "rating": rating,
        "services": services.map((e) => e.toJson()).toList(),
        "description": description,
      };

  @override
  operator ==(covariant ExpertUpdateModel other) =>
      other._name == _name &&
      other._type == _type &&
      other._rating == _rating &&
      other._services == _services &&
      other._description == _description;

  @override
  int get hashCode =>
      '$_name^$_type^$_rating^$_services^$_description'.hashCode;
}

///Service [ServiceModel]
class ServiceModel {
  final String _name;
  final String _subtitle;
  final double _price;

  const ServiceModel({
    required String name,
    required String subtitle,
    required double price,
  })  : _name = name,
        _subtitle = subtitle,
        _price = price;
  String get name => _name;
  String get subtitle => _subtitle;
  double get price => _price;

  factory ServiceModel.fromJson(Map<String, dynamic> json) => ServiceModel(
        name: json["name"],
        subtitle: json["subtitle"],
        price: double.parse(json["price"].toString()),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "subtitle": subtitle,
        "price": price,
      };

  @override
  operator ==(covariant ServiceModel other) =>
      other._name == _name && other._price == _price;

  @override
  int get hashCode => "$_name^$_price".hashCode;
}
