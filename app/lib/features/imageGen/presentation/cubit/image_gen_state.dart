part of 'image_gen_cubit.dart';

@freezed
class ImageGenState with _$ImageGenState {

  const ImageGenState._();

  const factory ImageGenState({
    @Default("") String prompt
  }) = _Initial;

}

