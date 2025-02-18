import 'package:app/core/resources/colors_x.dart';
import 'package:app/core/resources/styles_x.dart';
import 'package:app/features/presentation/cubit/image_gen_cubit.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hugeicons/hugeicons.dart';

class ChatWid extends StatelessWidget {
  const ChatWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 15,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: SvgPicture.asset(
                  Assets.svg.profileAvatar
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                'Generate an image famous historical figures',
                style: getSemiBoldStyle(
                    fontSize: 16, color: ColorManager.primaryTextColor),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        buildForImageGrid(),
        const SizedBox(height: 5),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                HugeIcons.strokeRoundedCopy01,
                size: 20,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                HugeIcons.strokeRoundedDownload02,
                size: 20,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                HugeIcons.strokeRoundedRefresh,
                size: 20,
              ),
            ),
          ],
        )
      ],
    );
  }

  buildForImageGrid() {
    return BlocBuilder<ImageGenCubit, ImageGenState>(
      builder: (context, state) {
        return SizedBox(
          height: 300,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration:  BoxDecoration(
                          color: ColorManager.cardColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                              state.recentImages[0]
                            ),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorManager.cardColor,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                              state.recentImages[1]
                            ),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorManager.cardColor,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                              state.recentImages[2]
                            ),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        decoration:  BoxDecoration(
                          color: ColorManager.cardColor,
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                              state.recentImages[3]
                            ),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
