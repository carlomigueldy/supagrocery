// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUser _$_$_AppUserFromJson(Map<String, dynamic> json) {
  return _$_AppUser(
    id: json['id'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$_$_AppUserToJson(_$_AppUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };

_$_Grocery _$_$_GroceryFromJson(Map<String, dynamic> json) {
  return _$_Grocery(
    id: json['id'] as String,
    name: json['name'] as String,
    createdBy: json['created_by'] as String,
    groceryProducts:
        Grocery._productsFromJson(json['grocery_products'] as List?),
  );
}

Map<String, dynamic> _$_$_GroceryToJson(_$_Grocery instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_by': instance.createdBy,
      'grocery_products': Grocery._productsToJson(instance.groceryProducts),
    };

_$_GroceryDto _$_$_GroceryDtoFromJson(Map<String, dynamic> json) {
  return _$_GroceryDto(
    name: json['name'] as String,
    createdBy: json['created_by'] as String,
  );
}

Map<String, dynamic> _$_$_GroceryDtoToJson(_$_GroceryDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'created_by': instance.createdBy,
    };

_$_Product _$_$_ProductFromJson(Map<String, dynamic> json) {
  return _$_Product(
    id: json['id'] as String,
    name: json['name'] as String,
    createdBy: json['created_by'] as String,
  );
}

Map<String, dynamic> _$_$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_by': instance.createdBy,
    };

_$_ProductDto _$_$_ProductDtoFromJson(Map<String, dynamic> json) {
  return _$_ProductDto(
    name: json['name'] as String,
    createdBy: json['created_by'] as String,
  );
}

Map<String, dynamic> _$_$_ProductDtoToJson(_$_ProductDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'created_by': instance.createdBy,
    };

_$_GroceryProduct _$_$_GroceryProductFromJson(Map<String, dynamic> json) {
  return _$_GroceryProduct(
    id: json['id'] as String,
    groceryId: json['grocery_id'] as String,
    productId: json['product_id'] as String,
    quantity: json['quantity'] as int,
    product: json['products'] == null
        ? null
        : Product.fromJson(json['products'] as Map<String, dynamic>),
    unit: json['unit'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_GroceryProductToJson(_$_GroceryProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'grocery_id': instance.groceryId,
      'product_id': instance.productId,
      'quantity': instance.quantity,
      'products': instance.product,
      'unit': instance.unit,
    };

_$_GroceryProductDto _$_$_GroceryProductDtoFromJson(Map<String, dynamic> json) {
  return _$_GroceryProductDto(
    groceryId: json['grocery_id'] as String,
    productId: json['product_id'] as String,
    quantity: json['quantity'] as int? ?? 1,
    unit: json['unit'] as String?,
  );
}

Map<String, dynamic> _$_$_GroceryProductDtoToJson(
        _$_GroceryProductDto instance) =>
    <String, dynamic>{
      'grocery_id': instance.groceryId,
      'product_id': instance.productId,
      'quantity': instance.quantity,
      'unit': instance.unit,
    };

_$_AuthDto _$_$_AuthDtoFromJson(Map<String, dynamic> json) {
  return _$_AuthDto(
    email: json['email'] as String,
    password: json['password'] as String,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$_$_AuthDtoToJson(_$_AuthDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
    };
