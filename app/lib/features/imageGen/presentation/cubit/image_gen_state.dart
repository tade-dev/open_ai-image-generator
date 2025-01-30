part of 'image_gen_cubit.dart';

@freezed
class ImageGenState with _$ImageGenState {

  const ImageGenState._();

  const factory ImageGenState({
    TextEditingController? prompt,
  }) = _Initial;

  List<Map<String, dynamic>> get imageSuggestions => [
    {
      'prompt': 'A cat drinking water',
      'image': Assets.images.catmilk.path,
    },
    {
      'prompt': 'Famous historical figures',
      'image': Assets.images.albert.path,
    },
    {
      'prompt': 'A cozy coffee shop',
      'image': Assets.images.coffeeshop.path,
    },
    {
      'prompt': 'A serene mountain lake',
      'image': Assets.images.lake.path,
    },
  ];

}

