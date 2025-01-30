import 'package:app/core/di/injectable.dart';
import 'package:app/core/resources/colors_x.dart';
import 'package:app/core/route/route.gr.dart';
import 'package:app/features/imageGen/presentation/widgets/ai_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ChatHistoryView extends StatelessWidget {
  const ChatHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50), 
        child: Aibar(
          title: "Chat History",
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: const Icon(
                Iconsax.edit,
                color: ColorManager.primaryTextColor,
              ),
            ),
          ],
          leading: IconButton(
            onPressed: (){
              si<AppRouter>().pop();
            }, 
            icon: const Icon(
              Iconsax.arrow_left,
              color: ColorManager.primaryTextColor,
            ),
          ),
        )
      ),
    );
  }
}