import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ideate_ai/src/view/common/logo.dart';
import 'package:patterns_canvas/patterns_canvas.dart';

import '../../config/config.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      3.seconds,
      () => context.go(AppRoutes.getStarted),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Animate(
            effects: [
              BlurEffect(
                duration: 1.seconds,
                delay: 0.2.seconds,
                begin: const Offset(3, 3),
                end: Offset.zero,
                curve: Curves.easeOut,
              ),
              ScaleEffect(
                duration: 1.seconds,
                delay: 0.2.seconds,
                begin: const Offset(1.5, 1.5),
                end: const Offset(1, 1),
                curve: Curves.easeOut,
              ),
            ],
            child: Positioned.fill(
              child: Animate(
                onPlay: (controller) => controller.repeat(period: 10.seconds),
                effects: [
                  ShimmerEffect(
                    angle: 0.7,
                    size: 0.3,
                    color: Colors.black.withOpacity(0.05),
                    duration: 4.seconds,
                    delay: 1.seconds,
                    curve: Curves.easeInOut,
                    blendMode: BlendMode.multiply,
                  ),
                ],
                child: CustomPaint(
                  size: MediaQuery.of(context).size,
                  foregroundPainter: ContainerPatternPainter(),
                ),
              ),
            ),
          ),
          Animate(
            effects: [
              BlurEffect(
                duration: 1.seconds,
                delay: 0.25.seconds,
                begin: const Offset(2, 2),
                end: Offset.zero,
                curve: Curves.easeOut,
              ),
              ScaleEffect(
                duration: 1.seconds,
                delay: 0.25.seconds,
                begin: const Offset(2, 2),
                end: const Offset(1, 1),
                curve: Curves.easeOut,
              ),
              SlideEffect(
                duration: 1.1.seconds,
                delay: 0.25.seconds,
                begin: const Offset(-0.5, -0.12),
                end: const Offset(0, 0),
                curve: Curves.easeOut,
              ),
            ],
            child: Positioned(
              top: -MediaQuery.of(context).size.height * 0.1,
              left: -MediaQuery.of(context).size.width * 0.1375,
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Hero(
                tag: 'purple-bg',
                child: Animate(
                  onPlay: (controller) => controller.repeat(),
                  effects: [
                    RotateEffect(
                      duration: 6.seconds,
                      begin: 0.0,
                      end: 1,
                      curve: Curves.easeInOut,
                    )
                  ],
                  child: SvgPicture.asset(
                    'assets/svgs/Purple.svg',
                  ),
                ),
              ),
            ),
          ),
          Animate(
            effects: [
              BlurEffect(
                duration: 1.seconds,
                delay: 0.15.seconds,
                begin: const Offset(5, 5),
                end: Offset.zero,
                curve: Curves.easeOut,
              ),
              ScaleEffect(
                duration: 1.seconds,
                delay: 0.15.seconds,
                begin: const Offset(1.75, 1.75),
                end: const Offset(1, 1),
                curve: Curves.easeOut,
              ),
              SlideEffect(
                duration: 1.1.seconds,
                delay: 0.15.seconds,
                begin: const Offset(0.25, -0.1),
                end: const Offset(0, 0),
                curve: Curves.easeOut,
              ),
            ],
            child: Positioned(
              top: 0,
              right: -MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Animate(
                onPlay: (controller) => controller.repeat(),
                effects: [
                  RotateEffect(
                    duration: 10.seconds,
                    begin: 0.0,
                    end: 1,
                    curve: Curves.slowMiddle,
                  )
                ],
                child: SvgPicture.asset(
                  'assets/svgs/Green.svg',
                ),
              ),
            ),
          ),
          Animate(
            effects: [
              BlurEffect(
                duration: 1.seconds,
                delay: 0.2.seconds,
                begin: const Offset(7, 7),
                end: Offset.zero,
                curve: Curves.easeOut,
              ),
              ScaleEffect(
                duration: 1.seconds,
                delay: 0.2.seconds,
                begin: const Offset(1.5, 1.5),
                end: const Offset(1, 1),
                curve: Curves.easeOut,
              ),
              SlideEffect(
                duration: 1.1.seconds,
                delay: 0.2.seconds,
                begin: const Offset(-0.3, 0.4),
                end: const Offset(0, 0),
                curve: Curves.easeOut,
              ),
            ],
            child: Positioned(
              bottom: -MediaQuery.of(context).size.height * 0.15,
              left: -MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width,
              child: Hero(
                tag: 'orange-bg',
                child: Animate(
                  onPlay: (controller) => controller.repeat(),
                  effects: [
                    RotateEffect(
                      duration: 4.seconds,
                      begin: 0.0,
                      end: 1,
                      curve: Curves.fastOutSlowIn,
                    )
                  ],
                  child: SvgPicture.asset(
                    'assets/svgs/Orange.svg',
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Animate(
              effects: [
                FadeEffect(
                  duration: 1.2.seconds,
                  delay: 0.5.seconds,
                  begin: 0.0,
                  end: 1.0,
                ),
                ScaleEffect(
                  duration: 1.2.seconds,
                  delay: 0.5.seconds,
                  begin: const Offset(0.8, 0.8),
                  end: const Offset(1, 1),
                ),
              ],
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: RichText(
                  text: TextSpan(
                    text: 'Powered by ',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                    children: const [
                      TextSpan(
                        text: 'CodeAlchemix',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Animate(
              effects: [
                FadeEffect(
                  duration: 1.5.seconds,
                  delay: 1.seconds,
                  curve: Curves.easeOut,
                ),
                SlideEffect(
                  duration: 1.seconds,
                  begin: const Offset(0, 0.5),
                  end: const Offset(0, 0),
                  curve: Curves.easeOut,
                ),
              ],
              child: const Hero(
                tag: 'logo',
                child: Logo(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerPatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Crosshatch(
      fgColor: Colors.black.withOpacity(0.1),
      bgColor: Colors.white,
      featuresCount: 20,
    ).paintOnWidget(canvas, size);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
