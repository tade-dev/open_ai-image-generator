// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_gen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageGenState {
  TextEditingController? get prompt => throw _privateConstructorUsedError;
  GenImageModel? get genImage => throw _privateConstructorUsedError;
  ImageDatum? get genImageData => throw _privateConstructorUsedError;
  List<String> get recentImages => throw _privateConstructorUsedError;
  List<RecentPromptModel>? get recentsPrompts =>
      throw _privateConstructorUsedError;
  List<Message>? get promptMessages => throw _privateConstructorUsedError;
  FormzSubmissionStatus get generateImageStatus =>
      throw _privateConstructorUsedError;
  FormzSubmissionStatus get reGenerateImageStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageGenStateCopyWith<ImageGenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageGenStateCopyWith<$Res> {
  factory $ImageGenStateCopyWith(
          ImageGenState value, $Res Function(ImageGenState) then) =
      _$ImageGenStateCopyWithImpl<$Res, ImageGenState>;
  @useResult
  $Res call(
      {TextEditingController? prompt,
      GenImageModel? genImage,
      ImageDatum? genImageData,
      List<String> recentImages,
      List<RecentPromptModel>? recentsPrompts,
      List<Message>? promptMessages,
      FormzSubmissionStatus generateImageStatus,
      FormzSubmissionStatus reGenerateImageStatus});

  $GenImageModelCopyWith<$Res>? get genImage;
  $ImageDatumCopyWith<$Res>? get genImageData;
}

/// @nodoc
class _$ImageGenStateCopyWithImpl<$Res, $Val extends ImageGenState>
    implements $ImageGenStateCopyWith<$Res> {
  _$ImageGenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = freezed,
    Object? genImage = freezed,
    Object? genImageData = freezed,
    Object? recentImages = null,
    Object? recentsPrompts = freezed,
    Object? promptMessages = freezed,
    Object? generateImageStatus = null,
    Object? reGenerateImageStatus = null,
  }) {
    return _then(_value.copyWith(
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      genImage: freezed == genImage
          ? _value.genImage
          : genImage // ignore: cast_nullable_to_non_nullable
              as GenImageModel?,
      genImageData: freezed == genImageData
          ? _value.genImageData
          : genImageData // ignore: cast_nullable_to_non_nullable
              as ImageDatum?,
      recentImages: null == recentImages
          ? _value.recentImages
          : recentImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recentsPrompts: freezed == recentsPrompts
          ? _value.recentsPrompts
          : recentsPrompts // ignore: cast_nullable_to_non_nullable
              as List<RecentPromptModel>?,
      promptMessages: freezed == promptMessages
          ? _value.promptMessages
          : promptMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
      generateImageStatus: null == generateImageStatus
          ? _value.generateImageStatus
          : generateImageStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      reGenerateImageStatus: null == reGenerateImageStatus
          ? _value.reGenerateImageStatus
          : reGenerateImageStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GenImageModelCopyWith<$Res>? get genImage {
    if (_value.genImage == null) {
      return null;
    }

    return $GenImageModelCopyWith<$Res>(_value.genImage!, (value) {
      return _then(_value.copyWith(genImage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageDatumCopyWith<$Res>? get genImageData {
    if (_value.genImageData == null) {
      return null;
    }

    return $ImageDatumCopyWith<$Res>(_value.genImageData!, (value) {
      return _then(_value.copyWith(genImageData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ImageGenStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController? prompt,
      GenImageModel? genImage,
      ImageDatum? genImageData,
      List<String> recentImages,
      List<RecentPromptModel>? recentsPrompts,
      List<Message>? promptMessages,
      FormzSubmissionStatus generateImageStatus,
      FormzSubmissionStatus reGenerateImageStatus});

  @override
  $GenImageModelCopyWith<$Res>? get genImage;
  @override
  $ImageDatumCopyWith<$Res>? get genImageData;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ImageGenStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = freezed,
    Object? genImage = freezed,
    Object? genImageData = freezed,
    Object? recentImages = null,
    Object? recentsPrompts = freezed,
    Object? promptMessages = freezed,
    Object? generateImageStatus = null,
    Object? reGenerateImageStatus = null,
  }) {
    return _then(_$InitialImpl(
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      genImage: freezed == genImage
          ? _value.genImage
          : genImage // ignore: cast_nullable_to_non_nullable
              as GenImageModel?,
      genImageData: freezed == genImageData
          ? _value.genImageData
          : genImageData // ignore: cast_nullable_to_non_nullable
              as ImageDatum?,
      recentImages: null == recentImages
          ? _value._recentImages
          : recentImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recentsPrompts: freezed == recentsPrompts
          ? _value._recentsPrompts
          : recentsPrompts // ignore: cast_nullable_to_non_nullable
              as List<RecentPromptModel>?,
      promptMessages: freezed == promptMessages
          ? _value._promptMessages
          : promptMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
      generateImageStatus: null == generateImageStatus
          ? _value.generateImageStatus
          : generateImageStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      reGenerateImageStatus: null == reGenerateImageStatus
          ? _value.reGenerateImageStatus
          : reGenerateImageStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl(
      {this.prompt,
      this.genImage,
      this.genImageData,
      final List<String> recentImages = const [],
      final List<RecentPromptModel>? recentsPrompts,
      final List<Message>? promptMessages,
      this.generateImageStatus = FormzSubmissionStatus.initial,
      this.reGenerateImageStatus = FormzSubmissionStatus.initial})
      : _recentImages = recentImages,
        _recentsPrompts = recentsPrompts,
        _promptMessages = promptMessages,
        super._();

  @override
  final TextEditingController? prompt;
  @override
  final GenImageModel? genImage;
  @override
  final ImageDatum? genImageData;
  final List<String> _recentImages;
  @override
  @JsonKey()
  List<String> get recentImages {
    if (_recentImages is EqualUnmodifiableListView) return _recentImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentImages);
  }

  final List<RecentPromptModel>? _recentsPrompts;
  @override
  List<RecentPromptModel>? get recentsPrompts {
    final value = _recentsPrompts;
    if (value == null) return null;
    if (_recentsPrompts is EqualUnmodifiableListView) return _recentsPrompts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Message>? _promptMessages;
  @override
  List<Message>? get promptMessages {
    final value = _promptMessages;
    if (value == null) return null;
    if (_promptMessages is EqualUnmodifiableListView) return _promptMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final FormzSubmissionStatus generateImageStatus;
  @override
  @JsonKey()
  final FormzSubmissionStatus reGenerateImageStatus;

  @override
  String toString() {
    return 'ImageGenState(prompt: $prompt, genImage: $genImage, genImageData: $genImageData, recentImages: $recentImages, recentsPrompts: $recentsPrompts, promptMessages: $promptMessages, generateImageStatus: $generateImageStatus, reGenerateImageStatus: $reGenerateImageStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.genImage, genImage) ||
                other.genImage == genImage) &&
            (identical(other.genImageData, genImageData) ||
                other.genImageData == genImageData) &&
            const DeepCollectionEquality()
                .equals(other._recentImages, _recentImages) &&
            const DeepCollectionEquality()
                .equals(other._recentsPrompts, _recentsPrompts) &&
            const DeepCollectionEquality()
                .equals(other._promptMessages, _promptMessages) &&
            (identical(other.generateImageStatus, generateImageStatus) ||
                other.generateImageStatus == generateImageStatus) &&
            (identical(other.reGenerateImageStatus, reGenerateImageStatus) ||
                other.reGenerateImageStatus == reGenerateImageStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      prompt,
      genImage,
      genImageData,
      const DeepCollectionEquality().hash(_recentImages),
      const DeepCollectionEquality().hash(_recentsPrompts),
      const DeepCollectionEquality().hash(_promptMessages),
      generateImageStatus,
      reGenerateImageStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial extends ImageGenState {
  const factory _Initial(
      {final TextEditingController? prompt,
      final GenImageModel? genImage,
      final ImageDatum? genImageData,
      final List<String> recentImages,
      final List<RecentPromptModel>? recentsPrompts,
      final List<Message>? promptMessages,
      final FormzSubmissionStatus generateImageStatus,
      final FormzSubmissionStatus reGenerateImageStatus}) = _$InitialImpl;
  const _Initial._() : super._();

  @override
  TextEditingController? get prompt;
  @override
  GenImageModel? get genImage;
  @override
  ImageDatum? get genImageData;
  @override
  List<String> get recentImages;
  @override
  List<RecentPromptModel>? get recentsPrompts;
  @override
  List<Message>? get promptMessages;
  @override
  FormzSubmissionStatus get generateImageStatus;
  @override
  FormzSubmissionStatus get reGenerateImageStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
