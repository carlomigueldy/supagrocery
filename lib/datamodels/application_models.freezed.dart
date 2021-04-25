// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'application_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return _AppUser.fromJson(json);
}

/// @nodoc
class _$AppUserTearOff {
  const _$AppUserTearOff();

  _AppUser call(
      {required String id, required String name, required String email}) {
    return _AppUser(
      id: id,
      name: name,
      email: email,
    );
  }

  AppUser fromJson(Map<String, Object> json) {
    return AppUser.fromJson(json);
  }
}

/// @nodoc
const $AppUser = _$AppUserTearOff();

/// @nodoc
mixin _$AppUser {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res>;
  $Res call({String id, String name, String email});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  final AppUser _value;
  // ignore: unused_field
  final $Res Function(AppUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$AppUserCopyWith(_AppUser value, $Res Function(_AppUser) then) =
      __$AppUserCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String email});
}

/// @nodoc
class __$AppUserCopyWithImpl<$Res> extends _$AppUserCopyWithImpl<$Res>
    implements _$AppUserCopyWith<$Res> {
  __$AppUserCopyWithImpl(_AppUser _value, $Res Function(_AppUser) _then)
      : super(_value, (v) => _then(v as _AppUser));

  @override
  _AppUser get _value => super._value as _AppUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_AppUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AppUser implements _AppUser {
  const _$_AppUser({required this.id, required this.name, required this.email});

  factory _$_AppUser.fromJson(Map<String, dynamic> json) =>
      _$_$_AppUserFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'AppUser(id: $id, name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$AppUserCopyWith<_AppUser> get copyWith =>
      __$AppUserCopyWithImpl<_AppUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppUserToJson(this);
  }
}

abstract class _AppUser implements AppUser {
  const factory _AppUser(
      {required String id,
      required String name,
      required String email}) = _$_AppUser;

  factory _AppUser.fromJson(Map<String, dynamic> json) = _$_AppUser.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppUserCopyWith<_AppUser> get copyWith =>
      throw _privateConstructorUsedError;
}

Grocery _$GroceryFromJson(Map<String, dynamic> json) {
  return _Grocery.fromJson(json);
}

/// @nodoc
class _$GroceryTearOff {
  const _$GroceryTearOff();

  _Grocery call({required String id, required String name}) {
    return _Grocery(
      id: id,
      name: name,
    );
  }

  Grocery fromJson(Map<String, Object> json) {
    return Grocery.fromJson(json);
  }
}

/// @nodoc
const $Grocery = _$GroceryTearOff();

/// @nodoc
mixin _$Grocery {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroceryCopyWith<Grocery> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryCopyWith<$Res> {
  factory $GroceryCopyWith(Grocery value, $Res Function(Grocery) then) =
      _$GroceryCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$GroceryCopyWithImpl<$Res> implements $GroceryCopyWith<$Res> {
  _$GroceryCopyWithImpl(this._value, this._then);

  final Grocery _value;
  // ignore: unused_field
  final $Res Function(Grocery) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GroceryCopyWith<$Res> implements $GroceryCopyWith<$Res> {
  factory _$GroceryCopyWith(_Grocery value, $Res Function(_Grocery) then) =
      __$GroceryCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

/// @nodoc
class __$GroceryCopyWithImpl<$Res> extends _$GroceryCopyWithImpl<$Res>
    implements _$GroceryCopyWith<$Res> {
  __$GroceryCopyWithImpl(_Grocery _value, $Res Function(_Grocery) _then)
      : super(_value, (v) => _then(v as _Grocery));

  @override
  _Grocery get _value => super._value as _Grocery;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Grocery(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Grocery implements _Grocery {
  const _$_Grocery({required this.id, required this.name});

  factory _$_Grocery.fromJson(Map<String, dynamic> json) =>
      _$_$_GroceryFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Grocery(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Grocery &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$GroceryCopyWith<_Grocery> get copyWith =>
      __$GroceryCopyWithImpl<_Grocery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroceryToJson(this);
  }
}

abstract class _Grocery implements Grocery {
  const factory _Grocery({required String id, required String name}) =
      _$_Grocery;

  factory _Grocery.fromJson(Map<String, dynamic> json) = _$_Grocery.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroceryCopyWith<_Grocery> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call({required String id, required String name}) {
    return _Product(
      id: id,
      name: name,
    );
  }

  Product fromJson(Map<String, Object> json) {
    return Product.fromJson(json);
  }
}

/// @nodoc
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Product(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Product implements _Product {
  const _$_Product({required this.id, required this.name});

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Product(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Product &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductToJson(this);
  }
}

abstract class _Product implements Product {
  const factory _Product({required String id, required String name}) =
      _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith =>
      throw _privateConstructorUsedError;
}

GroceryProduct _$GroceryProductFromJson(Map<String, dynamic> json) {
  return _GroceryProduct.fromJson(json);
}

/// @nodoc
class _$GroceryProductTearOff {
  const _$GroceryProductTearOff();

  _GroceryProduct call(
      {required String id,
      @JsonKey(name: 'grocery_id') required String groceryId,
      @JsonKey(name: 'product_id') required String productId,
      required int quantity,
      String? unit}) {
    return _GroceryProduct(
      id: id,
      groceryId: groceryId,
      productId: productId,
      quantity: quantity,
      unit: unit,
    );
  }

  GroceryProduct fromJson(Map<String, Object> json) {
    return GroceryProduct.fromJson(json);
  }
}

/// @nodoc
const $GroceryProduct = _$GroceryProductTearOff();

/// @nodoc
mixin _$GroceryProduct {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'grocery_id')
  String get groceryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  String get productId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroceryProductCopyWith<GroceryProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryProductCopyWith<$Res> {
  factory $GroceryProductCopyWith(
          GroceryProduct value, $Res Function(GroceryProduct) then) =
      _$GroceryProductCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'grocery_id') String groceryId,
      @JsonKey(name: 'product_id') String productId,
      int quantity,
      String? unit});
}

/// @nodoc
class _$GroceryProductCopyWithImpl<$Res>
    implements $GroceryProductCopyWith<$Res> {
  _$GroceryProductCopyWithImpl(this._value, this._then);

  final GroceryProduct _value;
  // ignore: unused_field
  final $Res Function(GroceryProduct) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? groceryId = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      groceryId: groceryId == freezed
          ? _value.groceryId
          : groceryId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GroceryProductCopyWith<$Res>
    implements $GroceryProductCopyWith<$Res> {
  factory _$GroceryProductCopyWith(
          _GroceryProduct value, $Res Function(_GroceryProduct) then) =
      __$GroceryProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'grocery_id') String groceryId,
      @JsonKey(name: 'product_id') String productId,
      int quantity,
      String? unit});
}

/// @nodoc
class __$GroceryProductCopyWithImpl<$Res>
    extends _$GroceryProductCopyWithImpl<$Res>
    implements _$GroceryProductCopyWith<$Res> {
  __$GroceryProductCopyWithImpl(
      _GroceryProduct _value, $Res Function(_GroceryProduct) _then)
      : super(_value, (v) => _then(v as _GroceryProduct));

  @override
  _GroceryProduct get _value => super._value as _GroceryProduct;

  @override
  $Res call({
    Object? id = freezed,
    Object? groceryId = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? unit = freezed,
  }) {
    return _then(_GroceryProduct(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      groceryId: groceryId == freezed
          ? _value.groceryId
          : groceryId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GroceryProduct implements _GroceryProduct {
  const _$_GroceryProduct(
      {required this.id,
      @JsonKey(name: 'grocery_id') required this.groceryId,
      @JsonKey(name: 'product_id') required this.productId,
      required this.quantity,
      this.unit});

  factory _$_GroceryProduct.fromJson(Map<String, dynamic> json) =>
      _$_$_GroceryProductFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'grocery_id')
  final String groceryId;
  @override
  @JsonKey(name: 'product_id')
  final String productId;
  @override
  final int quantity;
  @override
  final String? unit;

  @override
  String toString() {
    return 'GroceryProduct(id: $id, groceryId: $groceryId, productId: $productId, quantity: $quantity, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroceryProduct &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.groceryId, groceryId) ||
                const DeepCollectionEquality()
                    .equals(other.groceryId, groceryId)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(groceryId) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(unit);

  @JsonKey(ignore: true)
  @override
  _$GroceryProductCopyWith<_GroceryProduct> get copyWith =>
      __$GroceryProductCopyWithImpl<_GroceryProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroceryProductToJson(this);
  }
}

abstract class _GroceryProduct implements GroceryProduct {
  const factory _GroceryProduct(
      {required String id,
      @JsonKey(name: 'grocery_id') required String groceryId,
      @JsonKey(name: 'product_id') required String productId,
      required int quantity,
      String? unit}) = _$_GroceryProduct;

  factory _GroceryProduct.fromJson(Map<String, dynamic> json) =
      _$_GroceryProduct.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'grocery_id')
  String get groceryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'product_id')
  String get productId => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  String? get unit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroceryProductCopyWith<_GroceryProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
