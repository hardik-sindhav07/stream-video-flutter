import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'themes.dart';

/// {@template controlsThemeData}
/// A style that overrides the default appearance of call controls widget.
/// {@endtemplate}
class StreamControlsTheme with Diagnosticable {
  static const double _borderRadiusTop = 20.0;
  static const double buttonPadding = 16.0;
  static const double defaultElevation = 10.0;
  static const double defaultPadding = 15.0;
  static const double defaultButtonsSpacing = 16.0;
  static const Color defaultIconColorEnabledLight = Colors.black;
  static const Color defaultIconColorEnabledDark = Colors.white;

  static const defaultEnabledSpeakerIcon = Icons.volume_up;
  static const defaultDisabledSpeakerIcon = Icons.volume_up_outlined;

  static const defaultEnabledVideoIcon = Icons.video_camera_front;
  static const defaultDisabledVideoIcon = Icons.video_camera_front_outlined;

  static const defaultEnabledMicIcon = Icons.mic;
  static const defaultDisabledMicIcon = Icons.mic_off;

  static const defaultFlipCameraIcon = Icons.flip_camera_ios;

  static const defaultPhoneIcon = Icons.phone;

  static const defaultButtonsAlignmentDesktop = WrapAlignment.center;

  static const defaultButtonsAlignmentMobile = WrapAlignment.spaceEvenly;

  /// Style of borders of container bar.
  final BorderRadius borderRadius;

  /// Color of the background of the bar/
  final Color bgColor;

  /// Elevation effect of the bar. This changes the top shadow in the Widget.
  final double elevation;

  ///Paging of the container Widget. You can use to increase/decrease the padding
  ///of the bar and its inner buttons.
  final EdgeInsets padding;

  /// The style of speaker toggle button.
  final ButtonStyle toggleSpeakerStyle;

  /// Icon for the speaker toggle button.
  final Icon toggleSpeakerIconEnabled;
  final Icon toggleSpeakerIconDisabled;

  /// The style of video toggle button.
  final ButtonStyle toggleVideoStyle;

  /// Icon of video toggle button.
  final Icon toggleVideoIconEnabled;

  /// Icon of video toggle button.
  final Icon toggleVideoIconDisabled;

  /// The style of microphone toggle button.
  final ButtonStyle toggleMicStyle;

  /// Icon of microphone toggle button.
  final Icon toggleMicIconEnabled;

  /// Icon of microphone toggle button.
  final Icon toggleMicIconDisabled;

  /// The style of camera switch button.
  final ButtonStyle switchCameraStyle;

  /// Icon of camera switch button.
  final Icon switchCameraIcon;

  /// The style of hand up button.
  final ButtonStyle hangUpStyle;

  /// Icon of hand up button.
  final Icon handUpCameraIcon;

  /// Alignment of buttons when is desktop mode. Default: center
  final WrapAlignment buttonsAlignmentDesktop;

  /// Alignment of buttons when is mobile mode. Default: space evenly
  final WrapAlignment buttonsAlignmentMobile;
  final double buttonsSpacing;

  static const BorderRadius defaultBorderRadius = BorderRadius.only(
    topLeft: Radius.circular(_borderRadiusTop),
    topRight: Radius.circular(_borderRadiusTop),
  );

  static ButtonStyle defaultButtonStyle(Color backgroundColor) {
    return ElevatedButton.styleFrom(
      shape: const CircleBorder(),
      padding: const EdgeInsets.all(buttonPadding),
      backgroundColor: backgroundColor,
      foregroundColor: Colors.grey, // <-- Splash color
    );
  }

  static ButtonStyle defaultHangUpButtonStyle() {
    return ElevatedButton.styleFrom(
      shape: const CircleBorder(),
      padding: const EdgeInsets.all(buttonPadding),
      backgroundColor: Colors.red,
      foregroundColor: Colors.grey, // <-- Splash color
    );
  }

  /// Version of StreamControlsTheme with colors of light theme.
  factory StreamControlsTheme.light([
    double elevation = defaultElevation,
    BorderRadius borderRadius = defaultBorderRadius,
    Color bgColor = Colors.white,
    EdgeInsets padding = const EdgeInsets.all(defaultPadding),
    ButtonStyle? toggleSpeakerStyle,
    Icon toggleSpeakerIconEnabled = const Icon(
      color: defaultIconColorEnabledLight,
      defaultEnabledSpeakerIcon,
    ),
    Icon toggleSpeakerIconDisabled = const Icon(
      color: Colors.grey,
      defaultDisabledSpeakerIcon,
    ),
    ButtonStyle? toggleVideoStyle,
    Icon toggleVideoIconEnabled = const Icon(
      color: defaultIconColorEnabledLight,
      defaultEnabledVideoIcon,
    ),
    Icon toggleVideoIconDisabled = const Icon(
      color: Colors.grey,
      defaultDisabledVideoIcon,
    ),
    ButtonStyle? toggleMicStyle,
    Icon toggleMicIconEnabled = const Icon(
      color: defaultIconColorEnabledLight,
      defaultEnabledMicIcon,
    ),
    Icon toggleMicIconDisabled = const Icon(
      color: Colors.grey,
      defaultDisabledMicIcon,
    ),
    ButtonStyle? switchCameraStyle,
    Icon switchCameraIcon = const Icon(
      color: defaultIconColorEnabledLight,
      defaultFlipCameraIcon,
    ),
    ButtonStyle? hangUpStyle,
    Icon handUpCameraIcon = const Icon(
      color: Color(0xfffcfcfc),
      defaultPhoneIcon,
    ),
    WrapAlignment buttonsAlignmentDesktop = defaultButtonsAlignmentDesktop,
    WrapAlignment buttonsAlignmentMobile = defaultButtonsAlignmentMobile,
    double buttonsSpacing = defaultButtonsSpacing,
  ]) {
    const Color buttonsBackground = Color(0xfffcfcfc);

    return StreamControlsTheme.raw(
      borderRadius: borderRadius,
      elevation: elevation,
      bgColor: bgColor,
      padding: padding,
      toggleSpeakerStyle:
          toggleSpeakerStyle ?? defaultButtonStyle(buttonsBackground),
      toggleSpeakerIconEnabled: toggleSpeakerIconEnabled,
      toggleSpeakerIconDisabled: toggleSpeakerIconDisabled,
      toggleVideoStyle:
          toggleVideoStyle ?? defaultButtonStyle(buttonsBackground),
      toggleVideoIconEnabled: toggleVideoIconEnabled,
      toggleVideoIconDisabled: toggleVideoIconDisabled,
      toggleMicStyle: toggleMicStyle ?? defaultButtonStyle(buttonsBackground),
      toggleMicIconEnabled: toggleMicIconEnabled,
      toggleMicIconDisabled: toggleMicIconDisabled,
      switchCameraStyle:
          switchCameraStyle ?? defaultButtonStyle(buttonsBackground),
      switchCameraIcon: switchCameraIcon,
      hangUpStyle: hangUpStyle ?? defaultHangUpButtonStyle(),
      handUpCameraIcon: handUpCameraIcon,
      buttonsAlignmentDesktop: buttonsAlignmentDesktop,
      buttonsAlignmentMobile: buttonsAlignmentMobile,
      buttonsSpacing: buttonsSpacing,
    );
  }

  /// Version of StreamControlsTheme with colors of dark theme.
  factory StreamControlsTheme.dark([
    double elevation = defaultElevation,
    BorderRadius borderRadius = defaultBorderRadius,
    Color bgColor = const Color(0xff101418),
    EdgeInsets padding = const EdgeInsets.all(defaultPadding),
    ButtonStyle? toggleSpeakerStyle,
    Icon toggleSpeakerIconEnabled = const Icon(
        color: defaultIconColorEnabledDark, defaultEnabledSpeakerIcon),
    Icon toggleSpeakerIconDisabled = const Icon(
      color: Colors.grey,
      defaultDisabledSpeakerIcon,
    ),
    ButtonStyle? toggleVideoStyle,
    Icon toggleVideoIconEnabled = const Icon(
      color: defaultIconColorEnabledDark,
      Icons.video_camera_front,
    ),
    Icon toggleVideoIconDisabled = const Icon(
      color: Colors.grey,
      Icons.video_camera_front_outlined,
    ),
    ButtonStyle? toggleMicStyle,
    Icon toggleMicIconEnabled = const Icon(
      color: defaultIconColorEnabledDark,
      Icons.mic,
    ),
    Icon toggleMicIconDisabled = const Icon(
      color: Colors.grey,
      Icons.mic_off,
    ),
    ButtonStyle? switchCameraStyle,
    Icon switchCameraIcon = const Icon(
      color: defaultIconColorEnabledDark,
      Icons.flip_camera_ios,
    ),
    ButtonStyle? hangUpStyle,
    Icon handUpCameraIcon = const Icon(
      color: Color(0xfffcfcfc),
      Icons.phone,
    ),
    WrapAlignment buttonsAlignmentDesktop = WrapAlignment.spaceEvenly,
    WrapAlignment buttonsAlignmentMobile = WrapAlignment.center,
    double buttonsSpacing = defaultButtonsSpacing,
  ]) {
    const Color buttonsBackground = Color(0xff070A0D);

    return StreamControlsTheme.raw(
      borderRadius: borderRadius,
      elevation: elevation,
      bgColor: bgColor,
      padding: padding,
      toggleSpeakerStyle:
          toggleSpeakerStyle ?? defaultButtonStyle(buttonsBackground),
      toggleSpeakerIconEnabled: toggleSpeakerIconEnabled,
      toggleSpeakerIconDisabled: toggleSpeakerIconDisabled,
      toggleVideoStyle:
          toggleVideoStyle ?? defaultButtonStyle(buttonsBackground),
      toggleVideoIconEnabled: toggleVideoIconEnabled,
      toggleVideoIconDisabled: toggleVideoIconDisabled,
      toggleMicStyle: toggleMicStyle ?? defaultButtonStyle(buttonsBackground),
      toggleMicIconEnabled: toggleMicIconEnabled,
      toggleMicIconDisabled: toggleMicIconDisabled,
      switchCameraStyle:
          switchCameraStyle ?? defaultButtonStyle(buttonsBackground),
      switchCameraIcon: switchCameraIcon,
      hangUpStyle: hangUpStyle ?? defaultHangUpButtonStyle(),
      handUpCameraIcon: handUpCameraIcon,
      buttonsAlignmentDesktop: buttonsAlignmentDesktop,
      buttonsAlignmentMobile: buttonsAlignmentMobile,
      buttonsSpacing: buttonsSpacing,
    );
  }

  /// {@macro avatarThemeData}
  StreamControlsTheme.raw({
    required this.borderRadius,
    required this.elevation,
    required this.bgColor,
    required this.padding,
    required this.toggleSpeakerStyle,
    required this.toggleSpeakerIconEnabled,
    required this.toggleSpeakerIconDisabled,
    required this.toggleVideoStyle,
    required this.toggleVideoIconEnabled,
    required this.toggleVideoIconDisabled,
    required this.toggleMicStyle,
    required this.toggleMicIconEnabled,
    required this.toggleMicIconDisabled,
    required this.switchCameraStyle,
    required this.switchCameraIcon,
    required this.hangUpStyle,
    required this.handUpCameraIcon,
    required this.buttonsAlignmentDesktop,
    required this.buttonsAlignmentMobile,
    required this.buttonsSpacing,
  });

  /// Constructor of StreamControlsTheme which pics colors from StreamColorTheme.
  factory StreamControlsTheme.fromColorTheme(
    StreamColorTheme colorTheme,
  ) {
    return StreamControlsTheme.raw(
      borderRadius: defaultBorderRadius,
      elevation: defaultElevation,
      bgColor: colorTheme.barsBg,
      padding: const EdgeInsets.all(defaultPadding),
      toggleSpeakerStyle: defaultButtonStyle(colorTheme.appBg),
      toggleSpeakerIconEnabled: Icon(
        color: colorTheme.overlayDark,
        defaultEnabledSpeakerIcon,
      ),
      toggleSpeakerIconDisabled: Icon(
        color: colorTheme.disabled,
        defaultDisabledSpeakerIcon,
      ),
      toggleVideoStyle: defaultButtonStyle(colorTheme.appBg),
      toggleVideoIconEnabled: Icon(
        color: colorTheme.overlayDark,
        defaultEnabledVideoIcon,
      ),
      toggleVideoIconDisabled: Icon(
        color: colorTheme.disabled,
        defaultDisabledVideoIcon,
      ),
      toggleMicStyle: defaultButtonStyle(colorTheme.appBg),
      toggleMicIconEnabled: Icon(
        color: colorTheme.overlayDark,
        defaultEnabledMicIcon,
      ),
      toggleMicIconDisabled: Icon(
        color: colorTheme.disabled,
        defaultDisabledMicIcon,
      ),
      switchCameraStyle: defaultButtonStyle(colorTheme.appBg),
      switchCameraIcon: Icon(
        color: colorTheme.overlayDark,
        defaultFlipCameraIcon,
      ),
      hangUpStyle: defaultHangUpButtonStyle(),
      handUpCameraIcon: Icon(
        color: colorTheme.highlight,
        defaultPhoneIcon,
      ),
      buttonsAlignmentDesktop: defaultButtonsAlignmentDesktop,
      buttonsAlignmentMobile: defaultButtonsAlignmentMobile,
      buttonsSpacing: defaultButtonsSpacing,
    );
  }

  StreamControlsTheme copyWith(
    BorderRadius? borderRadius,
    double? elevation,
    Color? bgColor,
    EdgeInsets? padding,
    ButtonStyle? toggleSpeakerStyle,
    Icon? toggleSpeakerIconEnabled,
    Icon? toggleSpeakerIconDisabled,
    ButtonStyle? toggleVideoStyle,
    Icon? toggleVideoIconEnabled,
    Icon? toggleVideoIconDisabled,
    ButtonStyle? toggleMicStyle,
    Icon? toggleMicIconEnabled,
    Icon? toggleMicIconDisabled,
    ButtonStyle? switchCameraStyle,
    Icon? switchCameraIcon,
    ButtonStyle? hangUpStyle,
    Icon? handUpCameraIcon,
    WrapAlignment? buttonsAlignmentDesktop,
    WrapAlignment? buttonsAlignmentMobile,
    double? buttonsSpacing,
  ) {
    return StreamControlsTheme.raw(
      borderRadius: borderRadius ?? this.borderRadius,
      elevation: elevation ?? this.elevation,
      bgColor: bgColor ?? this.bgColor,
      padding: padding ?? this.padding,
      toggleSpeakerStyle: toggleSpeakerStyle ?? this.toggleSpeakerStyle,
      toggleSpeakerIconEnabled:
          toggleSpeakerIconEnabled ?? this.toggleSpeakerIconEnabled,
      toggleSpeakerIconDisabled:
          toggleSpeakerIconDisabled ?? this.toggleSpeakerIconDisabled,
      toggleVideoStyle: toggleVideoStyle ?? this.toggleVideoStyle,
      toggleVideoIconEnabled:
          toggleVideoIconEnabled ?? this.toggleVideoIconEnabled,
      toggleVideoIconDisabled:
          toggleVideoIconDisabled ?? this.toggleVideoIconDisabled,
      toggleMicStyle: toggleMicStyle ?? this.toggleMicStyle,
      toggleMicIconEnabled: toggleMicIconEnabled ?? this.toggleMicIconEnabled,
      toggleMicIconDisabled:
          toggleMicIconDisabled ?? this.toggleMicIconDisabled,
      switchCameraStyle: switchCameraStyle ?? this.switchCameraStyle,
      switchCameraIcon: switchCameraIcon ?? this.switchCameraIcon,
      hangUpStyle: hangUpStyle ?? this.hangUpStyle,
      handUpCameraIcon: handUpCameraIcon ?? this.handUpCameraIcon,
      buttonsAlignmentDesktop:
          buttonsAlignmentDesktop ?? this.buttonsAlignmentDesktop,
      buttonsAlignmentMobile:
          buttonsAlignmentMobile ?? this.buttonsAlignmentMobile,
      buttonsSpacing: buttonsSpacing ?? this.buttonsSpacing,
    );
  }

  StreamControlsTheme merge(StreamControlsTheme? controlsTheme) {
    if (controlsTheme == null) return this;
    return copyWith(
      controlsTheme.borderRadius,
      controlsTheme.elevation,
      controlsTheme.bgColor,
      controlsTheme.padding,
      controlsTheme.toggleSpeakerStyle,
      controlsTheme.toggleSpeakerIconEnabled,
      controlsTheme.toggleSpeakerIconDisabled,
      controlsTheme.toggleVideoStyle,
      controlsTheme.toggleVideoIconEnabled,
      controlsTheme.toggleVideoIconDisabled,
      controlsTheme.toggleMicStyle,
      controlsTheme.toggleMicIconEnabled,
      controlsTheme.toggleMicIconDisabled,
      controlsTheme.switchCameraStyle,
      controlsTheme.switchCameraIcon,
      controlsTheme.hangUpStyle,
      controlsTheme.handUpCameraIcon,
      controlsTheme.buttonsAlignmentDesktop,
      controlsTheme.buttonsAlignmentMobile,
      controlsTheme.buttonsSpacing,
    );
  }

  StreamControlsTheme lerp(StreamControlsTheme other, double t) {
    return StreamControlsTheme.raw(
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t)!,
      elevation: lerpDouble(elevation, other.elevation, t)!,
      bgColor: Color.lerp(bgColor, other.bgColor, t)!,
      padding: EdgeInsets.lerp(padding, other.padding, t)!,
      toggleSpeakerStyle: ButtonStyle.lerp(
        toggleSpeakerStyle,
        other.toggleSpeakerStyle,
        t,
      )!,
      toggleSpeakerIconEnabled: other.toggleSpeakerIconEnabled,
      toggleSpeakerIconDisabled: other.toggleSpeakerIconDisabled,
      toggleVideoStyle: ButtonStyle.lerp(
        toggleVideoStyle,
        other.toggleVideoStyle,
        t,
      )!,
      toggleVideoIconEnabled: other.toggleVideoIconEnabled,
      toggleVideoIconDisabled: other.toggleVideoIconDisabled,
      toggleMicStyle: ButtonStyle.lerp(
        toggleMicStyle,
        other.toggleMicStyle,
        t,
      )!,
      toggleMicIconEnabled: other.toggleMicIconEnabled,
      toggleMicIconDisabled: other.toggleMicIconDisabled,
      switchCameraStyle: ButtonStyle.lerp(
        switchCameraStyle,
        other.switchCameraStyle,
        t,
      )!,
      switchCameraIcon: other.switchCameraIcon,
      hangUpStyle: ButtonStyle.lerp(
        hangUpStyle,
        other.hangUpStyle,
        t,
      )!,
      handUpCameraIcon: other.handUpCameraIcon,
      buttonsAlignmentDesktop: other.buttonsAlignmentDesktop,
      buttonsAlignmentMobile: other.buttonsAlignmentMobile,
      buttonsSpacing: lerpDouble(buttonsSpacing, other.buttonsSpacing, t)!,
    );
  }

  @override
  int get hashCode =>
      borderRadius.hashCode ^
      bgColor.hashCode ^
      elevation.hashCode ^
      padding.hashCode ^
      toggleSpeakerStyle.hashCode ^
      toggleSpeakerIconEnabled.hashCode ^
      toggleSpeakerIconDisabled.hashCode ^
      toggleVideoStyle.hashCode ^
      toggleVideoIconEnabled.hashCode ^
      toggleVideoIconDisabled.hashCode ^
      toggleMicStyle.hashCode ^
      toggleMicIconEnabled.hashCode ^
      toggleMicIconDisabled.hashCode ^
      switchCameraStyle.hashCode ^
      hangUpStyle.hashCode ^
      handUpCameraIcon.hashCode ^
      buttonsAlignmentDesktop.hashCode ^
      buttonsAlignmentMobile.hashCode ^
      buttonsSpacing.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StreamControlsTheme &&
          borderRadius == other.borderRadius &&
          bgColor == other.bgColor &&
          elevation == other.elevation &&
          padding == other.padding &&
          toggleSpeakerStyle == other.toggleSpeakerStyle &&
          toggleSpeakerIconEnabled == other.toggleSpeakerIconEnabled &&
          toggleSpeakerIconDisabled == other.toggleSpeakerIconDisabled &&
          toggleVideoStyle == other.toggleVideoStyle &&
          toggleVideoIconEnabled == other.toggleVideoIconEnabled &&
          toggleVideoIconDisabled == other.toggleVideoIconDisabled &&
          toggleMicStyle == other.toggleMicStyle &&
          toggleMicIconEnabled == other.toggleMicIconEnabled &&
          toggleMicIconDisabled == other.toggleMicIconDisabled &&
          switchCameraStyle == other.switchCameraStyle &&
          hangUpStyle == other.hangUpStyle &&
          handUpCameraIcon == other.handUpCameraIcon &&
          buttonsAlignmentDesktop == other.buttonsAlignmentDesktop &&
          buttonsAlignmentMobile == other.buttonsAlignmentMobile &&
          buttonsSpacing == other.buttonsSpacing;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);

    properties
      ..add(DiagnosticsProperty("borderRadius", borderRadius))
      ..add(DiagnosticsProperty("bgColor", bgColor))
      ..add(DiagnosticsProperty("elevation", elevation))
      ..add(DiagnosticsProperty("padding", padding))
      ..add(DiagnosticsProperty("toggleSpeakerStyle", toggleSpeakerStyle))
      ..add(
        DiagnosticsProperty(
          "toggleSpeakerIconEnabled",
          toggleSpeakerIconEnabled,
        ),
      )
      ..add(
        DiagnosticsProperty(
          "toggleSpeakerIconDisabled",
          toggleSpeakerIconDisabled,
        ),
      )
      ..add(DiagnosticsProperty("toggleVideoStyle", toggleVideoStyle))
      ..add(
        DiagnosticsProperty(
          "toggleVideoIconEnabled",
          toggleVideoIconEnabled,
        ),
      )
      ..add(
        DiagnosticsProperty(
          "toggleVideoIconDisabled",
          toggleVideoIconDisabled,
        ),
      )
      ..add(DiagnosticsProperty("toggleMicStyle", toggleMicStyle))
      ..add(DiagnosticsProperty("toggleMicIconEnabled", toggleMicIconEnabled))
      ..add(DiagnosticsProperty("toggleMicIconEnabled", toggleMicIconEnabled))
      ..add(DiagnosticsProperty("toggleMicIconDisabled", toggleMicIconDisabled))
      ..add(DiagnosticsProperty("toggleMicIconDisabled", toggleMicIconDisabled))
      ..add(DiagnosticsProperty("switchCameraStyle", switchCameraStyle))
      ..add(DiagnosticsProperty("switchCameraIcon", switchCameraIcon))
      ..add(DiagnosticsProperty("hangUpStyle", hangUpStyle))
      ..add(DiagnosticsProperty("handUpCameraIcon", handUpCameraIcon))
      ..add(
        DiagnosticsProperty(
          "buttonsAlignmentDesktop",
          buttonsAlignmentDesktop,
        ),
      )
      ..add(
        DiagnosticsProperty(
          "buttonsAlignmentMobile",
          buttonsAlignmentMobile,
        ),
      )
      ..add(DiagnosticsProperty("buttonsSpacing", buttonsSpacing));
  }
}
