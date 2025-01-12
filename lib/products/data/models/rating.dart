import 'package:task_elevate/shared/api_constants.dart';

class Rating {
  final double? rate;
  final int? count;

  const Rating({this.rate, this.count});

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: (json[ApiConstants.rateKey] as num?)?.toDouble(),
        count: json[ApiConstants.countKey] as int?,
      );
}
