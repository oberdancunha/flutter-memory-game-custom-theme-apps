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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$CarouselSliderModelCopyWithImpl<$Res, CarouselSliderModel>;
  @useResult
  $Res call({ThemeCard theme, CardDataSource cardDataSource});

  $ThemeCardCopyWith<$Res> get theme;
}

/// @nodoc
class _$CarouselSliderModelCopyWithImpl<$Res, $Val extends CarouselSliderModel>
    implements $CarouselSliderModelCopyWith<$Res> {
  _$CarouselSliderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? cardDataSource = null,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeCard,
      cardDataSource: null == cardDataSource
          ? _value.cardDataSource
          : cardDataSource // ignore: cast_nullable_to_non_nullable
              as CardDataSource,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ThemeCardCopyWith<$Res> get theme {
    return $ThemeCardCopyWith<$Res>(_value.theme, (value) {
      return _then(_value.copyWith(theme: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CarouselSliderModelCopyWith<$Res>
    implements $CarouselSliderModelCopyWith<$Res> {
  factory _$$_CarouselSliderModelCopyWith(_$_CarouselSliderModel value,
          $Res Function(_$_CarouselSliderModel) then) =
      __$$_CarouselSliderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeCard theme, CardDataSource cardDataSource});

  @override
  $ThemeCardCopyWith<$Res> get theme;
}

/// @nodoc
class __$$_CarouselSliderModelCopyWithImpl<$Res>
    extends _$CarouselSliderModelCopyWithImpl<$Res, _$_CarouselSliderModel>
    implements _$$_CarouselSliderModelCopyWith<$Res> {
  __$$_CarouselSliderModelCopyWithImpl(_$_CarouselSliderModel _value,
      $Res Function(_$_CarouselSliderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? cardDataSource = null,
  }) {
    return _then(_$_CarouselSliderModel(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeCard,
      cardDataSource: null == cardDataSource
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
            other is _$_CarouselSliderModel &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.cardDataSource, cardDataSource) ||
                other.cardDataSource == cardDataSource));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme, cardDataSource);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarouselSliderModelCopyWith<_$_CarouselSliderModel> get copyWith =>
      __$$_CarouselSliderModelCopyWithImpl<_$_CarouselSliderModel>(
          this, _$identity);
}

abstract class _CarouselSliderModel extends CarouselSliderModel {
  const factory _CarouselSliderModel(
      {required final ThemeCard theme,
      required final CardDataSource cardDataSource}) = _$_CarouselSliderModel;
  const _CarouselSliderModel._() : super._();

  @override
  ThemeCard get theme;
  @override
  CardDataSource get cardDataSource;
  @override
  @JsonKey(ignore: true)
  _$$_CarouselSliderModelCopyWith<_$_CarouselSliderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
