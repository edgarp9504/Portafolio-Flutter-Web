import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:portafolio_personal/ui/widgets/animation_aquare.dart';
import 'package:portafolio_personal/ui/widgets/menu_icon.dart';

class HomeViewMobile extends StatefulWidget {
  const HomeViewMobile({Key? key}) : super(key: key);

  @override
  State<HomeViewMobile> createState() => _HomeViewMobileState();
}

class _HomeViewMobileState extends State<HomeViewMobile>
    with TickerProviderStateMixin {
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
          Column(
            children: const [
              Expanded(flex: 1, child: _MenuTop()),
              Expanded(flex: 5, child: _BodyView()),
              Expanded(flex: 1, child: _Contact())
            ],
          ),
          Positioned(
            left: size.width * 0.7,
            top: size.height * 0.15,
            child: MouseRegion(
              onEnter: (event) => setState(() => isHover = true),
              onExit: (event) => setState(() => isHover = false),
              child: AnimationCircleCustom(
                height: 100,
                width: 100,
                colorContainer: isHover ? Colors.blue : Colors.red,
                controller: _controller,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MenuTop extends StatelessWidget {
  const _MenuTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: const [
          CustomAnimatedIcon(
              icon: Ionicons.logo_instagram, tooltip: 'Instagram'),
          SizedBox(width: 30.0),
          CustomAnimatedIcon(icon: Ionicons.logo_github, tooltip: 'github'),
          SizedBox(width: 30.0),
          CustomAnimatedIcon(icon: Ionicons.logo_linkedin, tooltip: 'Lonkedin'),
          Spacer(),
          Icon(Icons.menu, color: Colors.black),
        ],
      ),
    );
  }
}

class _BodyView extends StatelessWidget {
  const _BodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hola soy', style: GoogleFonts.cabin(fontSize: 20.0)),
          const SizedBox(height: 50.0),
          Text('Edgar Pérez',
              style: GoogleFonts.cabin(
                  fontSize: 50.0, fontWeight: FontWeight.bold)),
          RichText(
              text: TextSpan(
                  text: 'desarrollador',
                  style: GoogleFonts.cabin(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                TextSpan(
                    text: ' flutter',
                    style: GoogleFonts.cabin(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff003B81)))
              ])),
          const SizedBox(height: 50.0),
          Text('apacionado de la tecnologia',
              style: GoogleFonts.cabin(
                  fontSize: 20.0, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}

class _Contact extends StatelessWidget {
  const _Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Telefono',
                  style: GoogleFonts.cabin(
                      fontSize: 10.0, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15.0),
              Text('+52 998 3253195', style: GoogleFonts.cabin(fontSize: 8.0)),
            ],
          ),
        ),
        const SizedBox(height: 50, child: VerticalDivider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email',
                  style: GoogleFonts.cabin(
                      fontSize: 10.0, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15.0),
              Text('edgarpc0495@gmail.com',
                  style: GoogleFonts.cabin(fontSize: 8.0)),
            ],
          ),
        ),
        const SizedBox(height: 50, child: VerticalDivider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Location',
                  style: GoogleFonts.cabin(
                      fontSize: 10.0, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15.0),
              Text('Cancún Quintana Roo',
                  style: GoogleFonts.cabin(fontSize: 8.0)),
            ],
          ),
        ),
      ],
    );
  }
}
