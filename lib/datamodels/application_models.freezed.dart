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

  _Grocery call(
      {required String id,
      required String name,
      @JsonKey(name: 'created_by')
          required String createdBy,
      @JsonKey(name: 'grocery_products', fromJson: Grocery._productsFromJson, toJson: Grocery._productsToJson)
          List<GroceryProduct>? groceryProducts = const []}) {
    return _Grocery(
      id: id,
      name: name,
      createdBy: createdBy,
      groceryProducts: groceryProducts,
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
  @JsonKey(name: 'created_by')
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'grocery_products',
      fromJson: Grocery._productsFromJson,
      toJson: Grocery._productsToJson)
  List<GroceryProduct>? get groceryProducts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroceryCopyWith<Grocery> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryCopyWith<$Res> {
  factory $GroceryCopyWith(Grocery value, $Res Function(Grocery) then) =
      _$GroceryCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'created_by')
          String createdBy,
      @JsonKey(name: 'grocery_products', fromJson: Grocery._productsFromJson, toJson: Grocery._productsToJson)
          List<GroceryProduct>? groceryProducts});
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
    Object? createdBy = freezed,
    Object? groceryProducts = freezed,
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
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      groceryProducts: groceryProducts == freezed
          ? _value.groceryProducts
          : groceryProducts // ignore: cast_nullable_to_non_nullable
              as List<GroceryProduct>?,
    ));
  }
}

/// @nodoc
abstract class _$GroceryCopyWith<$Res> implements $GroceryCopyWith<$Res> {
  factory _$GroceryCopyWith(_Grocery value, $Res Function(_Grocery) then) =
      __$GroceryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'created_by')
          String createdBy,
      @JsonKey(name: 'grocery_products', fromJson: Grocery._productsFromJson, toJson: Grocery._productsToJson)
          List<GroceryProduct>? groceryProducts});
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
    Object? createdBy = freezed,
    Object? groceryProducts = freezed,
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
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      groceryProducts: groceryProducts == freezed
          ? _value.groceryProducts
          : groceryProducts // ignore: cast_nullable_to_non_nullable
              as List<GroceryProduct>?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Grocery extends _Grocery {
  const _$_Grocery(
      {required this.id,
      required this.name,
      @JsonKey(name: 'created_by')
          required this.createdBy,
      @JsonKey(name: 'grocery_products', fromJson: Grocery._productsFromJson, toJson: Grocery._productsToJson)
          this.groceryProducts = const []})
      : super._();

  factory _$_Grocery.fromJson(Map<String, dynamic> json) =>
      _$_$_GroceryFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'created_by')
  final String createdBy;
  @override
  @JsonKey(
      name: 'grocery_products',
      fromJson: Grocery._productsFromJson,
      toJson: Grocery._productsToJson)
  final List<GroceryProduct>? groceryProducts;

  @override
  String toString() {
    return 'Grocery(id: $id, name: $name, createdBy: $createdBy, groceryProducts: $groceryProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Grocery &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.groceryProducts, groceryProducts) ||
                const DeepCollectionEquality()
                    .equals(other.groceryProducts, groceryProducts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(groceryProducts);

  @JsonKey(ignore: true)
  @override
  _$GroceryCopyWith<_Grocery> get copyWith =>
      __$GroceryCopyWithImpl<_Grocery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroceryToJson(this);
  }
}

abstract class _Grocery extends Grocery {
  const factory _Grocery(
      {required String id,
      required String name,
      @JsonKey(name: 'created_by')
          required String createdBy,
      @JsonKey(name: 'grocery_products', fromJson: Grocery._productsFromJson, toJson: Grocery._productsToJson)
          List<GroceryProduct>? groceryProducts}) = _$_Grocery;
  const _Grocery._() : super._();

  factory _Grocery.fromJson(Map<String, dynamic> json) = _$_Grocery.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_by')
  String get createdBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: 'grocery_products',
      fromJson: Grocery._productsFromJson,
      toJson: Grocery._productsToJson)
  List<GroceryProduct>? get groceryProducts =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroceryCopyWith<_Grocery> get copyWith =>
      throw _privateConstructorUsedError;
}

GroceryDto _$GroceryDtoFromJson(Map<String, dynamic> json) {
  return _GroceryDto.fromJson(json);
}

/// @nodoc
class _$GroceryDtoTearOff {
  const _$GroceryDtoTearOff();

  _GroceryDto call(
      {required String name,
      @JsonKey(name: 'created_by') required String createdBy}) {
    return _GroceryDto(
      name: name,
      createdBy: createdBy,
    );
  }

  GroceryDto fromJson(Map<String, Object> json) {
    return GroceryDto.fromJson(json);
  }
}

/// @nodoc
const $GroceryDto = _$GroceryDtoTearOff();

/// @nodoc
mixin _$GroceryDto {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  String get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroceryDtoCopyWith<GroceryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryDtoCopyWith<$Res> {
  factory $GroceryDtoCopyWith(
          GroceryDto value, $Res Function(GroceryDto) then) =
      _$GroceryDtoCopyWithImpl<$Res>;
  $Res call({String name, @JsonKey(name: 'created_by') String createdBy});
}

/// @nodoc
class _$GroceryDtoCopyWithImpl<$Res> implements $GroceryDtoCopyWith<$Res> {
  _$GroceryDtoCopyWithImpl(this._value, this._then);

  final GroceryDto _value;
  // ignore: unused_field
  final $Res Function(GroceryDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GroceryDtoCopyWith<$Res> implements $GroceryDtoCopyWith<$Res> {
  factory _$GroceryDtoCopyWith(
          _GroceryDto value, $Res Function(_GroceryDto) then) =
      __$GroceryDtoCopyWithImpl<$Res>;
  @override
  $Res call({String name, @JsonKey(name: 'created_by') String createdBy});
}

/// @nodoc
class __$GroceryDtoCopyWithImpl<$Res> extends _$GroceryDtoCopyWithImpl<$Res>
    implements _$GroceryDtoCopyWith<$Res> {
  __$GroceryDtoCopyWithImpl(
      _GroceryDto _value, $Res Function(_GroceryDto) _then)
      : super(_value, (v) => _then(v as _GroceryDto));

  @override
  _GroceryDto get _value => super._value as _GroceryDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_GroceryDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GroceryDto implements _GroceryDto {
  const _$_GroceryDto(
      {required this.name,
      @JsonKey(name: 'created_by') required this.createdBy});

  factory _$_GroceryDto.fromJson(Map<String, dynamic> json) =>
      _$_$_GroceryDtoFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'created_by')
  final String createdBy;

  @override
  String toString() {
    return 'GroceryDto(name: $name, createdBy: $createdBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroceryDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdBy);

  @JsonKey(ignore: true)
  @override
  _$GroceryDtoCopyWith<_GroceryDto> get copyWith =>
      __$GroceryDtoCopyWithImpl<_GroceryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroceryDtoToJson(this);
  }
}

abstract class _GroceryDto implements GroceryDto {
  const factory _GroceryDto(
      {required String name,
      @JsonKey(name: 'created_by') required String createdBy}) = _$_GroceryDto;

  factory _GroceryDto.fromJson(Map<String, dynamic> json) =
      _$_GroceryDto.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_by')
  String get createdBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroceryDtoCopyWith<_GroceryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call(
      {required String id,
      required String name,
      @JsonKey(name: 'created_by') required String createdBy}) {
    return _Product(
      id: id,
      name: name,
      createdBy: createdBy,
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
  @JsonKey(name: 'created_by')
  String get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {String id, String name, @JsonKey(name: 'created_by') String createdBy});
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
    Object? createdBy = freezed,
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
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String name, @JsonKey(name: 'created_by') String createdBy});
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
    Object? createdBy = freezed,
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
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Product implements _Product {
  const _$_Product(
      {required this.id,
      required this.name,
      @JsonKey(name: 'created_by') required this.createdBy});

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'created_by')
  final String createdBy;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, createdBy: $createdBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Product &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdBy);

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
  const factory _Product(
      {required String id,
      required String name,
      @JsonKey(name: 'created_by') required String createdBy}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_by')
  String get createdBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  return _ProductDto.fromJson(json);
}

/// @nodoc
class _$ProductDtoTearOff {
  const _$ProductDtoTearOff();

  _ProductDto call(
      {required String name,
      @JsonKey(name: 'created_by') required String createdBy}) {
    return _ProductDto(
      name: name,
      createdBy: createdBy,
    );
  }

  ProductDto fromJson(Map<String, Object> json) {
    return ProductDto.fromJson(json);
  }
}

/// @nodoc
const $ProductDto = _$ProductDtoTearOff();

/// @nodoc
mixin _$ProductDto {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  String get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDtoCopyWith<ProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDtoCopyWith<$Res> {
  factory $ProductDtoCopyWith(
          ProductDto value, $Res Function(ProductDto) then) =
      _$ProductDtoCopyWithImpl<$Res>;
  $Res call({String name, @JsonKey(name: 'created_by') String createdBy});
}

/// @nodoc
class _$ProductDtoCopyWithImpl<$Res> implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._value, this._then);

  final ProductDto _value;
  // ignore: unused_field
  final $Res Function(ProductDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductDtoCopyWith<$Res> implements $ProductDtoCopyWith<$Res> {
  factory _$ProductDtoCopyWith(
          _ProductDto value, $Res Function(_ProductDto) then) =
      __$ProductDtoCopyWithImpl<$Res>;
  @override
  $Res call({String name, @JsonKey(name: 'created_by') String createdBy});
}

/// @nodoc
class __$ProductDtoCopyWithImpl<$Res> extends _$ProductDtoCopyWithImpl<$Res>
    implements _$ProductDtoCopyWith<$Res> {
  __$ProductDtoCopyWithImpl(
      _ProductDto _value, $Res Function(_ProductDto) _then)
      : super(_value, (v) => _then(v as _ProductDto));

  @override
  _ProductDto get _value => super._value as _ProductDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_ProductDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProductDto implements _ProductDto {
  const _$_ProductDto(
      {required this.name,
      @JsonKey(name: 'created_by') required this.createdBy});

  factory _$_ProductDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductDtoFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'created_by')
  final String createdBy;

  @override
  String toString() {
    return 'ProductDto(name: $name, createdBy: $createdBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdBy);

  @JsonKey(ignore: true)
  @override
  _$ProductDtoCopyWith<_ProductDto> get copyWith =>
      __$ProductDtoCopyWithImpl<_ProductDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductDtoToJson(this);
  }
}

abstract class _ProductDto implements ProductDto {
  const factory _ProductDto(
      {required String name,
      @JsonKey(name: 'created_by') required String createdBy}) = _$_ProductDto;

  factory _ProductDto.fromJson(Map<String, dynamic> json) =
      _$_ProductDto.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_by')
  String get createdBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductDtoCopyWith<_ProductDto> get copyWith =>
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
      @JsonKey(name: 'products') Product? product,
      String? unit = ''}) {
    return _GroceryProduct(
      id: id,
      groceryId: groceryId,
      productId: productId,
      quantity: quantity,
      product: product,
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
  @JsonKey(name: 'products')
  Product? get product => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'products') Product? product,
      String? unit});

  $ProductCopyWith<$Res>? get product;
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
    Object? product = freezed,
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
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
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
      @JsonKey(name: 'products') Product? product,
      String? unit});

  @override
  $ProductCopyWith<$Res>? get product;
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
    Object? product = freezed,
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
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
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
      @JsonKey(name: 'products') this.product,
      this.unit = ''});

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
  @JsonKey(name: 'products')
  final Product? product;
  @JsonKey(defaultValue: '')
  @override
  final String? unit;

  @override
  String toString() {
    return 'GroceryProduct(id: $id, groceryId: $groceryId, productId: $productId, quantity: $quantity, product: $product, unit: $unit)';
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
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
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
      const DeepCollectionEquality().hash(product) ^
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
      @JsonKey(name: 'products') Product? product,
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
  @JsonKey(name: 'products')
  Product? get product => throw _privateConstructorUsedError;
  @override
  String? get unit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroceryProductCopyWith<_GroceryProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

GroceryProductDto _$GroceryProductDtoFromJson(Map<String, dynamic> json) {
  return _GroceryProductDto.fromJson(json);
}

/// @nodoc
class _$GroceryProductDtoTearOff {
  const _$GroceryProductDtoTearOff();

  _GroceryProductDto call(
      {@JsonKey(name: 'grocery_id') required String groceryId,
      @JsonKey(name: 'product_id') required String productId,
      int quantity = 1,
      String? unit}) {
    return _GroceryProductDto(
      groceryId: groceryId,
      productId: productId,
      quantity: quantity,
      unit: unit,
    );
  }

  GroceryProductDto fromJson(Map<String, Object> json) {
    return GroceryProductDto.fromJson(json);
  }
}

/// @nodoc
const $GroceryProductDto = _$GroceryProductDtoTearOff();

/// @nodoc
mixin _$GroceryProductDto {
  @JsonKey(name: 'grocery_id')
  String get groceryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  String get productId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroceryProductDtoCopyWith<GroceryProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryProductDtoCopyWith<$Res> {
  factory $GroceryProductDtoCopyWith(
          GroceryProductDto value, $Res Function(GroceryProductDto) then) =
      _$GroceryProductDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'grocery_id') String groceryId,
      @JsonKey(name: 'product_id') String productId,
      int quantity,
      String? unit});
}

/// @nodoc
class _$GroceryProductDtoCopyWithImpl<$Res>
    implements $GroceryProductDtoCopyWith<$Res> {
  _$GroceryProductDtoCopyWithImpl(this._value, this._then);

  final GroceryProductDto _value;
  // ignore: unused_field
  final $Res Function(GroceryProductDto) _then;

  @override
  $Res call({
    Object? groceryId = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$GroceryProductDtoCopyWith<$Res>
    implements $GroceryProductDtoCopyWith<$Res> {
  factory _$GroceryProductDtoCopyWith(
          _GroceryProductDto value, $Res Function(_GroceryProductDto) then) =
      __$GroceryProductDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'grocery_id') String groceryId,
      @JsonKey(name: 'product_id') String productId,
      int quantity,
      String? unit});
}

/// @nodoc
class __$GroceryProductDtoCopyWithImpl<$Res>
    extends _$GroceryProductDtoCopyWithImpl<$Res>
    implements _$GroceryProductDtoCopyWith<$Res> {
  __$GroceryProductDtoCopyWithImpl(
      _GroceryProductDto _value, $Res Function(_GroceryProductDto) _then)
      : super(_value, (v) => _then(v as _GroceryProductDto));

  @override
  _GroceryProductDto get _value => super._value as _GroceryProductDto;

  @override
  $Res call({
    Object? groceryId = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? unit = freezed,
  }) {
    return _then(_GroceryProductDto(
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
class _$_GroceryProductDto implements _GroceryProductDto {
  const _$_GroceryProductDto(
      {@JsonKey(name: 'grocery_id') required this.groceryId,
      @JsonKey(name: 'product_id') required this.productId,
      this.quantity = 1,
      this.unit});

  factory _$_GroceryProductDto.fromJson(Map<String, dynamic> json) =>
      _$_$_GroceryProductDtoFromJson(json);

  @override
  @JsonKey(name: 'grocery_id')
  final String groceryId;
  @override
  @JsonKey(name: 'product_id')
  final String productId;
  @JsonKey(defaultValue: 1)
  @override
  final int quantity;
  @override
  final String? unit;

  @override
  String toString() {
    return 'GroceryProductDto(groceryId: $groceryId, productId: $productId, quantity: $quantity, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroceryProductDto &&
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
      const DeepCollectionEquality().hash(groceryId) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(unit);

  @JsonKey(ignore: true)
  @override
  _$GroceryProductDtoCopyWith<_GroceryProductDto> get copyWith =>
      __$GroceryProductDtoCopyWithImpl<_GroceryProductDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroceryProductDtoToJson(this);
  }
}

abstract class _GroceryProductDto implements GroceryProductDto {
  const factory _GroceryProductDto(
      {@JsonKey(name: 'grocery_id') required String groceryId,
      @JsonKey(name: 'product_id') required String productId,
      int quantity,
      String? unit}) = _$_GroceryProductDto;

  factory _GroceryProductDto.fromJson(Map<String, dynamic> json) =
      _$_GroceryProductDto.fromJson;

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
  _$GroceryProductDtoCopyWith<_GroceryProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthDto _$AuthDtoFromJson(Map<String, dynamic> json) {
  return _AuthDto.fromJson(json);
}

/// @nodoc
class _$AuthDtoTearOff {
  const _$AuthDtoTearOff();

  _AuthDto call(
      {required String email, required String password, String? name}) {
    return _AuthDto(
      email: email,
      password: password,
      name: name,
    );
  }

  AuthDto fromJson(Map<String, Object> json) {
    return AuthDto.fromJson(json);
  }
}

/// @nodoc
const $AuthDto = _$AuthDtoTearOff();

/// @nodoc
mixin _$AuthDto {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthDtoCopyWith<AuthDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDtoCopyWith<$Res> {
  factory $AuthDtoCopyWith(AuthDto value, $Res Function(AuthDto) then) =
      _$AuthDtoCopyWithImpl<$Res>;
  $Res call({String email, String password, String? name});
}

/// @nodoc
class _$AuthDtoCopyWithImpl<$Res> implements $AuthDtoCopyWith<$Res> {
  _$AuthDtoCopyWithImpl(this._value, this._then);

  final AuthDto _value;
  // ignore: unused_field
  final $Res Function(AuthDto) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AuthDtoCopyWith<$Res> implements $AuthDtoCopyWith<$Res> {
  factory _$AuthDtoCopyWith(_AuthDto value, $Res Function(_AuthDto) then) =
      __$AuthDtoCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password, String? name});
}

/// @nodoc
class __$AuthDtoCopyWithImpl<$Res> extends _$AuthDtoCopyWithImpl<$Res>
    implements _$AuthDtoCopyWith<$Res> {
  __$AuthDtoCopyWithImpl(_AuthDto _value, $Res Function(_AuthDto) _then)
      : super(_value, (v) => _then(v as _AuthDto));

  @override
  _AuthDto get _value => super._value as _AuthDto;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
  }) {
    return _then(_AuthDto(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AuthDto implements _AuthDto {
  const _$_AuthDto({required this.email, required this.password, this.name});

  factory _$_AuthDto.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthDtoFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String? name;

  @override
  String toString() {
    return 'AuthDto(email: $email, password: $password, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthDto &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$AuthDtoCopyWith<_AuthDto> get copyWith =>
      __$AuthDtoCopyWithImpl<_AuthDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthDtoToJson(this);
  }
}

abstract class _AuthDto implements AuthDto {
  const factory _AuthDto(
      {required String email,
      required String password,
      String? name}) = _$_AuthDto;

  factory _AuthDto.fromJson(Map<String, dynamic> json) = _$_AuthDto.fromJson;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthDtoCopyWith<_AuthDto> get copyWith =>
      throw _privateConstructorUsedError;
}
