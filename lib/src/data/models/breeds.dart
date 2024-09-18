import 'package:freezed_annotation/freezed_annotation.dart';

part 'breeds.freezed.dart';
part 'breeds.g.dart';

@freezed
class Breeds with _$Breeds {
  const factory Breeds({
    required Map<String, dynamic> message, // Map to handle dynamic breed data
    required String status, // Status of the API response
  }) = _Breeds;

  factory Breeds.fromJson(Map<String, dynamic> json) => _$BreedsFromJson(json);
}
