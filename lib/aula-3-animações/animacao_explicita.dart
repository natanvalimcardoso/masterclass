import 'package:flutter/material.dart';

class AnimacaoExplicita extends StatefulWidget {
  AnimacaoExplicita({Key? key}) : super(key: key);
  @override
  State<AnimacaoExplicita> createState() => _AnimacaoExplicitaState();
}

class _AnimacaoExplicitaState extends State<AnimacaoExplicita> with TickerProviderStateMixin {
  
  late AnimationController controller;
  late Animation<Size?> sizeAnimation;
  late Animation<Color?> colorAnimation;

  void toggle() {
    if (controller.value == 0) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    sizeAnimation = SizeTween(
      begin: Size(100, 100),
      end: Size(300, 300),
    ).animate(controller);

    colorAnimation = ColorTween(
      begin: Colors.red,
      end: Colors.green,
    ).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return GestureDetector(
              onTap: toggle,
              child: Container(
                width: sizeAnimation.value?.width,
                height: sizeAnimation.value?.height,
                color: colorAnimation.value,
              ),
            );
          },
        ),
      ),
    );
  }
}
