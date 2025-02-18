import 'package:app/core/di/injectable.dart';
import 'package:app/core/resources/colors_x.dart';
import 'package:app/core/route/route.gr.dart';
import 'package:app/features/presentation/components/chat_wid.dart';
import 'package:app/features/presentation/cubit/image_gen_cubit.dart';
import 'package:app/features/presentation/widgets/app_bar/ai_bar.dart';
import 'package:app/features/presentation/widgets/input/prompt_field.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';

class ChatRoomView extends StatelessWidget {
  const ChatRoomView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageGenCubit, ImageGenState>(
      builder: (context, state) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50), 
            child: Aibar(
              title: "Image Generator 🚀",
              leading: IconButton(
                onPressed: (){
                  si<AppRouter>().pop();
                }, 
                icon: const Icon(
                  Iconsax.arrow_left,
                  color: ColorManager.primaryTextColor,
                )
              ),
            )
          ),
          body: SafeArea(
            top: false,
            child: Column(
              children: [
                 Expanded(
                  flex: 12,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          ListView.separated(
                            reverse: true,
                            itemCount: state.promptMessages?.length ?? 0,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder:(context, index) => const ChatWid(),
                            separatorBuilder: (context, index) => const SizedBox(height: 30),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Center(
                      child: PromptField(
                        autofocus: true,
                        onChanged: (value) {
                          
                        },
                        suffixIcon: Visibility(
                          child: SvgPicture.asset(
                            Assets.svg.mynauiArrowUpRightCircleSolid,
                            height: 10,
                            width: 10,
                          ),
                        ).animate().fade().scale(),
                        hintText: "Ask anything...",
                      ),
                    )
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}