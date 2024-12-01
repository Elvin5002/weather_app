import 'package:flutter/material.dart';

import '../../../core/constants/text_styles.dart';
import '../../widgets/gradient_container.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const GradientContainer(
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            'Settings',
            style: TextStyles.h1,
          ),
        ),
      ],
    );
  }
}
