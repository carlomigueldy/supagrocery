import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_models.freezed.dart';
part 'application_models.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String id,
    required String name,
    required String email,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}

@freezed
class Grocery with _$Grocery {
  const factory Grocery({
    required String id,
    required String name,
    @JsonKey(name: 'created_by') required String createdBy,
  }) = _Grocery;

  factory Grocery.fromJson(Map<String, dynamic> json) =>
      _$GroceryFromJson(json);
}

@freezed
class GroceryDto with _$GroceryDto {
  const factory GroceryDto({
    required String name,
    @JsonKey(name: 'created_by') required String createdBy,
  }) = _GroceryDto;

  factory GroceryDto.fromJson(Map<String, dynamic> json) =>
      _$GroceryDtoFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required String name,
    @JsonKey(name: 'created_by') required String createdBy,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class ProductDto with _$ProductDto {
  const factory ProductDto({
    required String name,
    @JsonKey(name: 'created_by') required String createdBy,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}

@freezed
class GroceryProduct with _$GroceryProduct {
  const factory GroceryProduct({
    required String id,
    @JsonKey(name: 'grocery_id') required String groceryId,
    @JsonKey(name: 'product_id') required String productId,
    required int quantity,
    String? unit,
  }) = _GroceryProduct;

  factory GroceryProduct.fromJson(Map<String, dynamic> json) =>
      _$GroceryProductFromJson(json);
}

@freezed
class AuthDto with _$AuthDto {
  const factory AuthDto({
    required String email,
    required String password,
    String? name,
  }) = _AuthDto;

  factory AuthDto.fromJson(Map<String, dynamic> json) =>
      _$AuthDtoFromJson(json);
}
