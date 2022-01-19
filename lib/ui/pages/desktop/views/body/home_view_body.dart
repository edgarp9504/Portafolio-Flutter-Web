import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portafolio_personal/ui/widgets/menu_icon.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Expanded(flex: 1, child: _Menu()),
        Expanded(flex: 6, child: _TittleCenter()),
        Expanded(flex: 1, child: _Contact()),
      ],
    );
  }
}

class _Menu extends StatelessWidget {
  const _Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: const [
          CustomAnimatedIcon(text: 'Home'),
          CustomAnimatedIcon(text: 'About me'),
          CustomAnimatedIcon(text: 'Contact me'),
        ],
      ),
    );
  }
}

class _TittleCenter extends StatelessWidget {
  const _TittleCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      padding: const EdgeInsets.only(left: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hola soy', style: GoogleFonts.cabin(fontSize: 36.0)),
          const SizedBox(height: 15.0),
          Text('Edgar Pérez',
              style: GoogleFonts.cabin(
                  fontSize: 96.0, fontWeight: FontWeight.bold)),
          RichText(
              text: TextSpan(
                  text: 'desarrollador',
                  style: GoogleFonts.cabin(
                      fontSize: 64.0, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                TextSpan(
                    text: ' flutter',
                    style: GoogleFonts.cabin(
                        fontSize: 64.0,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff003B81)))
              ])),
          const SizedBox(height: 15.0),
          Text('apasionado de la tecnologia',
              style: GoogleFonts.cabin(
                  fontSize: 36.0, fontWeight: FontWeight.bold))
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
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Telefono',
                  style: GoogleFonts.cabin(
                      fontSize: 20.0, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15.0),
              Text('+52 998 3253195', style: GoogleFonts.cabin()),
            ],
          ),
        ),
        const SizedBox(height: 50, child: VerticalDivider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email',
                  style: GoogleFonts.cabin(
                      fontSize: 20.0, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15.0),
              Text('edgarpc0495@gmail.com', style: GoogleFonts.cabin()),
            ],
          ),
        ),
        const SizedBox(height: 50, child: VerticalDivider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Location',
                  style: GoogleFonts.cabin(
                      fontSize: 20.0, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15.0),
              Text('Cancún Quintana Roo', style: GoogleFonts.cabin()),
            ],
          ),
        ),
        const SizedBox(height: 50, child: VerticalDivider()),
        Expanded(child: Container())
      ],
    );
  }
}
