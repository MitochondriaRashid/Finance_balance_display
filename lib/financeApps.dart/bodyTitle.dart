
import 'package:flutter/cupertino.dart';

import '../main.dart';

class BodyTitle extends StatelessWidget {
  var themeofcontext;

  BodyTitle({required this.themeofcontext});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(MyApp.bodyTitle, style: themeofcontext.headlineSmall),
            Text(
              MyApp.bodyTitle_2,
              style: themeofcontext.titleSmall,
            )
          ],
        ),
      ],
    );
  }
}