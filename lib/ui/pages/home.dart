import 'package:flutter/material.dart';
import 'package:portafolio_personal/ui/pages/desktop/views/aboutme_view.dart';
import 'package:portafolio_personal/ui/pages/desktop/views/works_view.dart';
import 'package:portafolio_personal/ui/pages/mobile/views/home_view_mobile.dart';

import 'desktop/views/home_view.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: (size.width > 850)
                ? PageView(
                    scrollDirection: Axis.vertical,
                    children: const [
                      HomeView(),
                      AboutView(),
                      WorkViews(),
                    ],
                  )
                : const HomeViewMobile()));
  }
}
