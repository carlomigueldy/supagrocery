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
  const Grocery._();
  const factory Grocery({
    required String id,
    required String name,
    @JsonKey(name: 'created_by')
        required String createdBy,
    @Default([])
    @JsonKey(
      name: 'grocery_products',
      fromJson: Grocery._productsFromJson,
      toJson: Grocery._productsToJson,
    )
        List<GroceryProduct>? groceryProducts,
  }) = _Grocery;

  bool get hasGroceryProducts => groceryProducts!.length > 0;

  List<Product?>? get products {
    if (!hasGroceryProducts) return [];

    return groceryProducts!.map((e) => e.product).toList();
  }

  factory Grocery.fromJson(Map<String, dynamic> json) =>
      _$GroceryFromJson(json);

  static List<GroceryProduct>? _productsFromJson(List<dynamic>? list) {
    if (list == null) {
      return [];
    }

    return list.map((e) => GroceryProduct.fromJson(e)).toList();
  }

  static List<Map<String, dynamic>>? _productsToJson(
      List<GroceryProduct>? list) {
    if (list == null) {
      return [];
    }

    return list.map((e) => e.toJson()).toList();
  }
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
    @JsonKey(name: 'products') Product? product,
    @Default('') String? unit,
  }) = _GroceryProduct;

  factory GroceryProduct.fromJson(Map<String, dynamic> json) =>
      _$GroceryProductFromJson(json);
}

@freezed
class GroceryProductDto with _$GroceryProductDto {
  const factory GroceryProductDto({
    @JsonKey(name: 'grocery_id') required String groceryId,
    @JsonKey(name: 'product_id') required String productId,
    @Default(1) int quantity,
    String? unit,
  }) = _GroceryProductDto;

  factory GroceryProductDto.fromJson(Map<String, dynamic> json) =>
      _$GroceryProductDtoFromJson(json);
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
