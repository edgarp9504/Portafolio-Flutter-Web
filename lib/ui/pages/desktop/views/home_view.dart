import 'package:flutter/material.dart';
import 'package:portafolio_personal/ui/menu/slidebar.dart';
import 'package:portafolio_personal/ui/pages/desktop/views/body/home_view_body.dart';
import 'package:portafolio_personal/ui/widgets/animation_aquare.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      child: Stack(
        children: [
          Row(
            children: const [
              Expanded(child: MenuLeft()),
              VerticalDivider(),
              Expanded(flex: 9, child: HomeViewBody()),
            ],
          ),
          Positioned(
            left: size.width * 0.9,
            child: MouseRegion(
              onEnter: (event) => setState(() => isHover = true),
              onExit: (event) => setState(() => isHover = false),
              child: AnimationCircleCustom(
                colorContainer: isHover ? Colors.blue : Colors.red,
                controller: _controller,
              ),
            ),
          ),
          //AnimatedText()
        ],
      ),
    );
  }
}
