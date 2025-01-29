import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'image_gen_state.dart';

class ImageGenCubit extends Cubit<ImageGenState> {
  ImageGenCubit() : super(ImageGenInitial());
}
