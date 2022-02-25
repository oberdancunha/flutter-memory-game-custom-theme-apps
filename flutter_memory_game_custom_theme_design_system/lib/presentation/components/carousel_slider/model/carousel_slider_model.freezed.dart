// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'carousel_slider_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CarouselSliderModelTearOff {
  const _$CarouselSliderModelTearOff();

  _CarouselSliderModel call(
      {required ThemeCard theme, required CardDataSource cardDataSource}) {
    return _CarouselSliderModel(
      theme: theme,
      cardDataSource: cardDataSource,
    );
  }
}

/// @nodoc
const $CarouselSliderModel = _$CarouselSliderModelTearOff();

/// @nodoc
mixin _$CarouselSliderModel {
  ThemeCard get theme => throw _privateConstructorUsedError;
  CardDataSource get cardDataSource => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarouselSliderModelCopyWith<CarouselSliderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarouselSliderModelCopyWith<$Res> {
  factory $CarouselSliderModelCopyWith(
          CarouselSliderModel value, $Res Function(CarouselSliderModel) then) =
      _$CarouselSliderModelCopyWithImpl<$Res>;
  $Res call({ThemeCard theme, CardDataSource cardDataSource});

  $ThemeCardCopyWith<$Res> get theme;
}

/// @nodoc
class _$CarouselSliderModelCopyWithImpl<$Res>
    implements $CarouselSliderModelCopyWith<$Res> {
  _$CarouselSliderModelCopyWithImpl(this._value, this._then);

  final CarouselSliderModel _value;
  // ignore: unused_field
  final $Res Function(CarouselSliderModel) _then;

  @override
  $Res call({
    Object? theme = freezed,
    Object? cardDataSource = freezed,
  }) {
    return _then(_value.copyWith(
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeCard,
      cardDataSource: cardDataSource == freezed
          ? _value.cardDataSource
          : cardDataSource // ignore: cast_nullable_to_non_nullable
              as CardDataSource,
    ));
  }

  @override
  $ThemeCardCopyWith<$Res> get theme {
    return $ThemeCardCopyWith<$Res>(_value.theme, (value) {
      return _then(_value.copyWith(theme: value));
    });
  }
}

/// @nodoc
abstract class _$CarouselSliderModelCopyWith<$Res>
    implements $CarouselSliderModelCopyWith<$Res> {
  factory _$CarouselSliderModelCopyWith(_CarouselSliderModel value,
          $Res Function(_CarouselSliderModel) then) =
      __$CarouselSliderModelCopyWithImpl<$Res>;
  @override
  $Res call({ThemeCard theme, CardDataSource cardDataSource});

  @override
  $ThemeCardCopyWith<$Res> get theme;
}

/// @nodoc
class __$CarouselSliderModelCopyWithImpl<$Res>
    extends _$CarouselSliderModelCopyWithImpl<$Res>
    implements _$CarouselSliderModelCopyWith<$Res> {
  __$CarouselSliderModelCopyWithImpl(
      _CarouselSliderModel _value, $Res Function(_CarouselSliderModel) _then)
      : super(_value, (v) => _then(v as _CarouselSliderModel));

  @override
  _CarouselSliderModel get _value => super._value as _CarouselSliderModel;

  @override
  $Res call({
    Object? theme = freezed,
    Object? cardDataSource = freezed,
  }) {
    return _then(_CarouselSliderModel(
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeCard,
      cardDataSource: cardDataSource == freezed
          ? _value.cardDataSource
          : cardDataSource // ignore: cast_nullable_to_non_nullable
              as CardDataSource,
    ));
  }
}

/// @nodoc

class _$_CarouselSliderModel extends _CarouselSliderModel {
  const _$_CarouselSliderModel(
      {required this.theme, required this.cardDataSource})
      : super._();

  @override
  final ThemeCard theme;
  @override
  final CardDataSource cardDataSource;

  @override
  String toString() {
    return 'CarouselSliderModel(theme: $theme, cardDataSource: $cardDataSource)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CarouselSliderModel &&
            const DeepCollectionEquality().equals(other.theme, theme) &&
            const DeepCollectionEquality()
                .equals(other.cardDataSource, cardDataSource));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(theme),
      const DeepCollectionEquality().hash(cardDataSource));

  @JsonKey(ignore: true)
  @override
  _$CarouselSliderModelCopyWith<_CarouselSliderModel> get copyWith =>
      __$CarouselSliderModelCopyWithImpl<_CarouselSliderModel>(
          this, _$identity);
}

abstract class _CarouselSliderModel extends CarouselSliderModel {
  const factory _CarouselSliderModel(
      {required ThemeCard theme,
      required CardDataSource cardDataSource}) = _$_CarouselSliderModel;
  const _CarouselSliderModel._() : super._();

  @override
  ThemeCard get theme;
  @override
  CardDataSource get cardDataSource;
  @override
  @JsonKey(ignore: true)
  _$CarouselSliderModelCopyWith<_CarouselSliderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
