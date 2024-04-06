import 'package:flutter/material.dart';
import 'package:karthick_mugunthan_s_s_application3/core/utils/size_utils.dart';
import 'package:karthick_mugunthan_s_s_application3/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeff000000 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF000000),
      );
  // Headline text style
  static get headlineLargeSenSecondaryContainer =>
      theme.textTheme.headlineLarge!.sen.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  // Title text style
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get nATS {
    return copyWith(
      fontFamily: 'NATS',
    );
  }

  TextStyle get sFProRounded {
    return copyWith(
      fontFamily: 'SF Pro Rounded',
    );
  }

  TextStyle get tourney {
    return copyWith(
      fontFamily: 'Tourney',
    );
  }

  TextStyle get sen {
    return copyWith(
      fontFamily: 'Sen',
    );
  }
}
