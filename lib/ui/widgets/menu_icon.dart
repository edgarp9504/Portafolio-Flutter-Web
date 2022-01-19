import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:portafolio_personal/ui/theme/colors_thene.dart';

class CustomAnimatedIcon extends StatefulWidget {
  const CustomAnimatedIcon(
      {Key? key, this.icon, this.text, this.tooltip, this.url})
      : super(key: key);
  final IconData? icon;
  final String? text;
  final String? tooltip;
  final String? url;

  @override
  State<CustomAnimatedIcon> createState() => CustomAnimatedIconState();
}

class CustomAnimatedIconState extends State<CustomAnimatedIcon> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        color: Colors.white,
        duration: const Duration(microseconds: 150),
        child: MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (_) => setState(() => isHover = true),
            onExit: (_) => setState(() => isHover = false),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  hoverColor: Colors.white,
                  tooltip: widget.tooltip,
                  icon: Icon(widget.icon,
                      color: isHover ? const Color(0xff003B81) : colorIcon,
                      size: 40.0),
                  onPressed: () {
                    launch(widget.url!);
                  },
                ),
                (widget.text == null)
                    ? Container()
                    : Text(
                        widget.text!,
                        style: GoogleFonts.cabin(
                            fontSize: 20.0,
                            color: isHover
                                ? const Color(0xff003B81)
                                : Colors.black),
                      ),
              ],
            )));
  }
}
