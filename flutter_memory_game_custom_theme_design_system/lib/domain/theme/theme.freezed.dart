// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ThemeCardTearOff {
  const _$ThemeCardTearOff();

  _ThemeCard call(
      {required String title,
      required String backgroundImageTitle,
      required String backgroundLogo,
      required ThemeData themeData,
      String? fontFamily}) {
    return _ThemeCard(
      title: title,
      backgroundImageTitle: backgroundImageTitle,
      backgroundLogo: backgroundLogo,
      themeData: themeData,
      fontFamily: fontFamily,
    );
  }
}

/// @nodoc
const $ThemeCard = _$ThemeCardTearOff();

/// @nodoc
mixin _$ThemeCard {
  String get title => throw _privateConstructorUsedError;
  String get backgroundImageTitle => throw _privateConstructorUsedError;
  String get backgroundLogo => throw _privateConstructorUsedError;
  ThemeData get themeData => throw _privateConstructorUsedError;
  String? get fontFamily => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeCardCopyWith<ThemeCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeCardCopyWith<$Res> {
  factory $ThemeCardCopyWith(ThemeCard value, $Res Function(ThemeCard) then) =
      _$ThemeCardCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String backgroundImageTitle,
      String backgroundLogo,
      ThemeData themeData,
      String? fontFamily});
}

/// @nodoc
class _$ThemeCardCopyWithImpl<$Res> implements $ThemeCardCopyWith<$Res> {
  _$ThemeCardCopyWithImpl(this._value, this._then);

  final ThemeCard _value;
  // ignore: unused_field
  final $Res Function(ThemeCard) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? backgroundImageTitle = freezed,
    Object? backgroundLogo = freezed,
    Object? themeData = freezed,
    Object? fontFamily = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImageTitle: backgroundImageTitle == freezed
          ? _value.backgroundImageTitle
          : backgroundImageTitle // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundLogo: backgroundLogo == freezed
          ? _value.backgroundLogo
          : backgroundLogo // ignore: cast_nullable_to_non_nullable
              as String,
      themeData: themeData == freezed
          ? _value.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      fontFamily: fontFamily == freezed
          ? _value.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ThemeCardCopyWith<$Res> implements $ThemeCardCopyWith<$Res> {
  factory _$ThemeCardCopyWith(
          _ThemeCard value, $Res Function(_ThemeCard) then) =
      __$ThemeCardCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String backgroundImageTitle,
      String backgroundLogo,
      ThemeData themeData,
      String? fontFamily});
}

/// @nodoc
class __$ThemeCardCopyWithImpl<$Res> extends _$ThemeCardCopyWithImpl<$Res>
    implements _$ThemeCardCopyWith<$Res> {
  __$ThemeCardCopyWithImpl(_ThemeCard _value, $Res Function(_ThemeCard) _then)
      : super(_value, (v) => _then(v as _ThemeCard));

  @override
  _ThemeCard get _value => super._value as _ThemeCard;

  @override
  $Res call({
    Object? title = freezed,
    Object? backgroundImageTitle = freezed,
    Object? backgroundLogo = freezed,
    Object? themeData = freezed,
    Object? fontFamily = freezed,
  }) {
    return _then(_ThemeCard(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImageTitle: backgroundImageTitle == freezed
          ? _value.backgroundImageTitle
          : backgroundImageTitle // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundLogo: backgroundLogo == freezed
          ? _value.backgroundLogo
          : backgroundLogo // ignore: cast_nullable_to_non_nullable
              as String,
      themeData: themeData == freezed
          ? _value.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      fontFamily: fontFamily == freezed
          ? _value.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ThemeCard extends _ThemeCard {
  _$_ThemeCard(
      {required this.title,
      required this.backgroundImageTitle,
      required this.backgroundLogo,
      required this.themeData,
      this.fontFamily})
      : super._();

  @override
  final String title;
  @override
  final String backgroundImageTitle;
  @override
  final String backgroundLogo;
  @override
  final ThemeData themeData;
  @override
  final String? fontFamily;

  @override
  String toString() {
    return 'ThemeCard(title: $title, backgroundImageTitle: $backgroundImageTitle, backgroundLogo: $backgroundLogo, themeData: $themeData, fontFamily: $fontFamily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThemeCard &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.backgroundImageTitle, backgroundImageTitle) &&
            const DeepCollectionEquality()
                .equals(other.backgroundLogo, backgroundLogo) &&
            const DeepCollectionEquality().equals(other.themeData, themeData) &&
            const DeepCollectionEquality()
                .equals(other.fontFamily, fontFamily));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(backgroundImageTitle),
      const DeepCollectionEquality().hash(backgroundLogo),
      const DeepCollectionEquality().hash(themeData),
      const DeepCollectionEquality().hash(fontFamily));

  @JsonKey(ignore: true)
  @override
  _$ThemeCardCopyWith<_ThemeCard> get copyWith =>
      __$ThemeCardCopyWithImpl<_ThemeCard>(this, _$identity);
}

abstract class _ThemeCard extends ThemeCard {
  factory _ThemeCard(
      {required String title,
      required String backgroundImageTitle,
      required String backgroundLogo,
      required ThemeData themeData,
      String? fontFamily}) = _$_ThemeCard;
  _ThemeCard._() : super._();

  @override
  String get title;
  @override
  String get backgroundImageTitle;
  @override
  String get backgroundLogo;
  @override
  ThemeData get themeData;
  @override
  String? get fontFamily;
  @override
  @JsonKey(ignore: true)
  _$ThemeCardCopyWith<_ThemeCard> get copyWith =>
      throw _privateConstructorUsedError;
}
