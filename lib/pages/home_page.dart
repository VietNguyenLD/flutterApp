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
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: kColorPrimary,
      body: SafeArea(
        child: orientation == Orientation.portrait
            ? Stack(
                children: const [
                  GetStartedBackground(),
                  GetStartHeader(),
                ],
              )
            : Row(
                children: const [
                  Expanded(child: GetStartedBackground()),
                  Expanded(child: GetStartHeader()),
                ],
              ),
      ),
    );
  }
}

class GetStartedBackground extends StatelessWidget {
  const GetStartedBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: FractionallySizedBox(
            heightFactor: 0.6,
            widthFactor: 1,
            child: FittedBox(
                fit: BoxFit.cover,
                child: SvgPicture.asset('assets/images/bg_get_started.svg'))));
  }
}

class GetStartHeader extends StatelessWidget {
  const GetStartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset('assets/images/ic_logo.svg'),
        Text('Hi Afsar, Welcome ', style: PrimaryFont.medium(30)),
        Text(
          'to Silent Moon',
          style: PrimaryFont.thin(30),
        ),
        const Text(
            'Explore the app, Find some peace of mind to prepare for meditation'),
      ],
    );
  }
}
