import 'package:task_elevate/shared/api_constants.dart';

import 'rating.dart';

class Products {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final Rating rating;

  const Products({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        id: json[ApiConstants.idKey] as int,
        title: json[ApiConstants.titleKey] as String,
        price: (json[ApiConstants.priceKey] as num).toDouble(),
        description: json[ApiConstants.descriptionKey] as String,
        category: json[ApiConstants.categoryKey] as String,
        image: json[ApiConstants.imageKey] as String,
        rating: Rating.fromJson(
            json[ApiConstants.ratingKey] as Map<String, dynamic>),
      );
}
