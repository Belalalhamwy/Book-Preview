import 'package:bookly/core/utils/Assets.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/presntation/view/wedget/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
    navigatToHome();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetData.Logo),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    ));
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigatToHome() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        GoRouter.of(context).push(AppRouter.KHomeView);
        // Get.to(() => const HomeViewBody(),
        //     transition: Transition.fade, duration: KTranstionDuration);
      },
    );
  }
}
