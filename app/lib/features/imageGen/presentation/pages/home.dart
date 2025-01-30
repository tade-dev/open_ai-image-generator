import 'package:app/core/resources/colors_x.dart';
import 'package:app/core/resources/styles_x.dart';
import 'package:app/features/imageGen/presentation/cubit/image_gen_cubit.dart';
import 'package:app/features/imageGen/presentation/widgets/ai_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Aibar(
          title: "Image Generator",
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.clock,
                color: ColorManager.primaryTextColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.edit,
                color: ColorManager.primaryTextColor,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              buildImageSuggestions(),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }

  buildImageSuggestions() {
    return BlocBuilder<ImageGenCubit, ImageGenState>(
      builder: (context, state) {
        return GridView.builder(
          itemCount: state.imageSuggestions.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisExtent: 130,
            mainAxisSpacing: 10
          ), 
          itemBuilder:(context, index) {
            var suggestion = state.imageSuggestions[index];
            return Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  6
                ),
                color: ColorManager.cardColor
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 9,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          3
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            suggestion["image"]
                          ),
                          fit: BoxFit.cover
                        ),
                        color: ColorManager.cardColor
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    suggestion["prompt"],
                    maxLines: 1,
                    style: getMediumStyle(
                      color: ColorManager.primaryTextColor,
                      fontSize: 13
                    ),
                  )
                ],
              ),
            );
          },
        ).animate()
        .fade(
          duration: const Duration(milliseconds: 1200),
          curve: Curves.easeInOut,
          begin: 0,
          end: 1
        )
        .slide(
          begin: const Offset(0, -1),
          end: const Offset(0, 0),
          duration: const Duration(milliseconds: 900),
          curve: Curves.easeInOut,
        );
      },
    );
  }
}
