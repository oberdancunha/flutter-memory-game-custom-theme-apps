// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CardDto {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get selectedToGame => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardDtoCopyWith<CardDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardDtoCopyWith<$Res> {
  factory $CardDtoCopyWith(CardDto value, $Res Function(CardDto) then) =
      _$CardDtoCopyWithImpl<$Res, CardDto>;
  @useResult
  $Res call({String name, String image, int selectedToGame});
}

/// @nodoc
class _$CardDtoCopyWithImpl<$Res, $Val extends CardDto>
    implements $CardDtoCopyWith<$Res> {
  _$CardDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? selectedToGame = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      selectedToGame: null == selectedToGame
          ? _value.selectedToGame
          : selectedToGame // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardDtoCopyWith<$Res> implements $CardDtoCopyWith<$Res> {
  factory _$$_CardDtoCopyWith(
          _$_CardDto value, $Res Function(_$_CardDto) then) =
      __$$_CardDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String image, int selectedToGame});
}

/// @nodoc
class __$$_CardDtoCopyWithImpl<$Res>
    extends _$CardDtoCopyWithImpl<$Res, _$_CardDto>
    implements _$$_CardDtoCopyWith<$Res> {
  __$$_CardDtoCopyWithImpl(_$_CardDto _value, $Res Function(_$_CardDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? selectedToGame = null,
  }) {
    return _then(_$_CardDto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      selectedToGame: null == selectedToGame
          ? _value.selectedToGame
          : selectedToGame // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CardDto extends _CardDto {
  _$_CardDto(
      {required this.name, required this.image, required this.selectedToGame})
      : super._();

  @override
  final String name;
  @override
  final String image;
  @override
  final int selectedToGame;

  @override
  String toString() {
    return 'CardDto(name: $name, image: $image, selectedToGame: $selectedToGame)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.selectedToGame, selectedToGame) ||
                other.selectedToGame == selectedToGame));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, image, selectedToGame);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardDtoCopyWith<_$_CardDto> get copyWith =>
      __$$_CardDtoCopyWithImpl<_$_CardDto>(this, _$identity);
}

abstract class _CardDto extends CardDto {
  factory _CardDto(
      {required final String name,
      required final String image,
      required final int selectedToGame}) = _$_CardDto;
  _CardDto._() : super._();

  @override
  String get name;
  @override
  String get image;
  @override
  int get selectedToGame;
  @override
  @JsonKey(ignore: true)
  _$$_CardDtoCopyWith<_$_CardDto> get copyWith =>
      throw _privateConstructorUsedError;
}
