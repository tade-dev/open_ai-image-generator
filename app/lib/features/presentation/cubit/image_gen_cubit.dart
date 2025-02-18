import 'package:app/features/data/models/gen_image_model.dart';
import 'package:app/features/data/models/recent_prompt_model.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'image_gen_state.dart';
part 'image_gen_cubit.freezed.dart';

@lazySingleton
class ImageGenCubit extends Cubit<ImageGenState> {
  ImageGenCubit() : super(const ImageGenState());
}
