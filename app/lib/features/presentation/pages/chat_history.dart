import 'package:app/core/di/injectable.dart';
import 'package:app/core/resources/colors_x.dart';
import 'package:app/core/resources/styles_x.dart';
import 'package:app/core/route/route.gr.dart';
import 'package:app/features/presentation/components/empty_state.dart';
import 'package:app/features/presentation/cubit/image_gen_cubit.dart';
import 'package:app/features/presentation/pages/home.dart';
import 'package:app/features/presentation/widgets/app_bar/ai_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class ChatHistoryView extends StatelessWidget {
  const ChatHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageGenCubit, ImageGenState>(
      builder: (context, state) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Aibar(
              title: "Chat History",
              actions: [
                IconButton(
                  onPressed: () {
                    si<AppRouter>().push(const ChatRoomView());
                  },
                  icon: const Icon(
                    Iconsax.edit,
                    color: ColorManager.primaryTextColor,
                  ),
                ),
              ],
              leading: IconButton(
                onPressed: () {
                  si<AppRouter>().pop();
                },
                icon: const Icon(
                  Iconsax.arrow_left,
                  color: ColorManager.primaryTextColor,
                ),
              ),
            )
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Images",
                    style: getBoldStyle(
                      color: ColorManager.primaryTextColor,
                      fontSize: 18
                    ),
                  ),
                  const SizedBox(height: 5),
                  buildImageHistoryWid(),
                  const SizedBox(height: 15),
                  Text(
                    "Recents",
                    style: getBoldStyle(
                      color: ColorManager.primaryTextColor,
                      fontSize: 18
                    ),
                  ),
                  const SizedBox(height: 5),
                  buildRecents(isFromHome: false),
                ],
              )
            ),
          )
        );
      },
    );
  }

  buildImageHistoryWid() {
    return BlocBuilder<ImageGenCubit, ImageGenState>(
      builder: (context, state) {
        return SizedBox(
          height: 200,
          child: (state.recentImages.isEmpty) ?
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: EmptyStateWid(title: "No recent images"),
              ),
            ],
          ):
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 100,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5
            ),
            scrollDirection: Axis.horizontal,
            itemCount: state.recentImages.length,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(
                    state.recentImages[index],
                  ),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
        );
      },
    );
  }

}
