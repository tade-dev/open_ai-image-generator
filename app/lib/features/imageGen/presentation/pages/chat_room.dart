import 'package:app/core/di/injectable.dart';
import 'package:app/core/resources/colors_x.dart';
import 'package:app/core/route/route.gr.dart';
import 'package:app/features/imageGen/presentation/widgets/ai_bar.dart';
import 'package:app/features/imageGen/presentation/widgets/prompt_field.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ChatRoomView extends StatelessWidget {
  const ChatRoomView({super.key});

  @override
  Widget build(BuildContext context) {
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
            const Expanded(
              flex: 12,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       SizedBox(height: 20,),

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
                    onChanged: (value) {
                      
                    },
                    hintText: "Ask anything...",
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}