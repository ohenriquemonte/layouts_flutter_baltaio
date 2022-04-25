import 'package:flutter/material.dart';

class AnimatedInput extends StatelessWidget {
  AnimatedInput({
    Key? key,
    required this.controller,
  })  : containerOpacityAnim = Tween(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.7, 0.9),
          ),
        ),
        containerSizeAnim = Tween(
          begin: 60.0,
          end: 280.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.2, 0.3),
          ),
        ),
        containerBorderRadiusAnim = Tween(
          begin: 0.0,
          end: 30.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.25, 0.4),
          ),
        ),
        containerColorAnim = Tween(
          begin: Colors.white.withOpacity(0),
          end: Colors.black12,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.0, 0.25),
          ),
        ),
        super(key: key);

  final AnimationController controller;
  final Animation<Color> containerColorAnim;
  final Animation<double> containerOpacityAnim;
  final Animation<double> containerBorderRadiusAnim;
  final Animation<double> containerSizeAnim;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: _animate,
    );
  }

  Widget _animate(BuildContext context, child) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: containerColorAnim.value,
        borderRadius: BorderRadius.all(
          Radius.circular(containerBorderRadiusAnim.value),
        ),
      ),
      margin: const EdgeInsets.all(5),
      width: containerSizeAnim.value,
      child: Opacity(
        opacity: containerOpacityAnim.value,
        child: Row(
          children: [
            const SizedBox(width: 20),
            const Icon(Icons.search),
            const SizedBox(width: 20),
            Container(
              padding: const EdgeInsets.all(10),
              width: 200,
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Search',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Theme.of(context).primaryColor,
                    fontSize: 16,
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
