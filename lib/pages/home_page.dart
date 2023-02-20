import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/utils/theme.dart';

class HomePgae extends StatefulWidget {
  const HomePgae({super.key});

  @override
  State<HomePgae> createState() => _HomePgaeState();
}

class _HomePgaeState extends State<HomePgae> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorPrimary,
      body: SafeArea(
        child: Stack(
          children: [
            SvgPicture.asset('assets/images/bg_get_started.svg'),
            Column(
              children: [
                SvgPicture.asset('assets/images/ic_logo.svg'),
                const Text('Hi Afsar, Welcome '),
                const Text('to Silent Moon'),
                const Text(
                    'Explore the app, Find some peace of mind to prepare for meditation'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
