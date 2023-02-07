import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/images.dart';
import '../../../../constants/taxt.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          alignment: Alignment.center,
            image:  AssetImage(tWelcomeScreenImage),
            height: size.height * 0.2),
        Text(tLoginTitle, style: Theme.of(context).textTheme.headline1),
        Text(tLoginSubTitle, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}