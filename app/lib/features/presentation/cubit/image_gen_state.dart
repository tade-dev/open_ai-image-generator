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

  List<Map<String, dynamic>> get recents => [
    {
      'prompt': 'Generate an image of brad pitt in New York',
      "timeStamp": "45 minutes ago"
    },
    {
      'prompt': 'Generate an image of an homelesss man getting his first big break',
      "timeStamp": "1 hour ago"
    },
    {
      'prompt': 'Generate an image of cats and dogs fighting',
      "timeStamp": "Yesterday"
    },
    {
      'prompt': 'Generate an image of a singer having a coffee',
      "timeStamp": "Yesterday"
    },
  ];

}

