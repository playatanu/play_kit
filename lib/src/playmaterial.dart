import 'dart:ui';
import 'package:flutter/material.dart';

/// [ PlayContainer ]

class PlayContainer extends StatelessWidget {
  final Widget? child;
  final double blur;
  final double height, width;
  final bool dark;
  final BorderRadiusGeometry? borderRadius;

  // ignore: use_key_in_widget_constructors
  const PlayContainer({
    this.child,
    this.blur = 5,
    required this.height,
    required this.width,
    this.dark = false,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: dark
                  ? Colors.black.withOpacity(0.3)
                  : Colors.white.withOpacity(0.3),
              borderRadius: borderRadius),
          child: child,
        ),
      ),
    );
  }
}

/// [ PlayDivider ]

class PlayDivider extends StatelessWidget {
  final double blur;
  final bool dark;
  @override
  // ignore: overridden_fields
  final Key? key;
  final double? height;
  final double thickness;
  final double? indent;
  final double? endIndent;

  // ignore: use_key_in_widget_constructors
  const PlayDivider({
    this.blur = 5,
    this.dark = false,
    this.key,
    this.height,
    this.thickness = 1,
    this.indent = 10,
    this.endIndent = 10,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Divider(
          color: dark
              ? Colors.black.withOpacity(0.3)
              : Colors.white.withOpacity(0.3),
          endIndent: endIndent,
          height: height,
          key: key,
          indent: indent,
          thickness: thickness,
        ),
      ),
    );
  }
}

/// [ PlayTitle ]

class PlayTitle extends StatelessWidget {
  final double blur;
  final bool dark;
  final String title;
  final double? fontSize;
  final FontWeight? fontWeight;

  // ignore: use_key_in_widget_constructors
  const PlayTitle({
    /// [PLAY TITLE]
    this.blur = 5,
    this.dark = false,
    required this.title,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: dark
                ? Colors.black.withOpacity(0.3)
                : Colors.white.withOpacity(0.3),
          ),
        ),
      ),
    );
  }
}

/// [ PlayTextButton ]
// ignore: must_be_immutable
class PlayTextButton extends StatefulWidget {
  final Widget child;
  @override
  // ignore: overridden_fields
  final Key? key;
  void Function() onPressed;
  final double blur;
  final ButtonStyle? style;
  final bool autofocus;
  final Clip clipBehavior;
  final FocusNode? focusNode;

  final Function()? onLongPress;

  // ignore: use_key_in_widget_constructors
  PlayTextButton({
    required this.child,
    this.style,
    this.autofocus = false,
    this.onLongPress,
    required this.onPressed,
    this.key,
    this.blur = 5,
    this.clipBehavior = Clip.none,
    this.focusNode,
  });

  @override
  State<PlayTextButton> createState() => _PlayTextButtonState();
}

class _PlayTextButtonState extends State<PlayTextButton> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: widget.blur, sigmaY: widget.blur),
        child: TextButton(
          style: widget.style,
          autofocus: widget.autofocus,
          onLongPress: widget.onLongPress,
          key: widget.key,
          clipBehavior: widget.clipBehavior,
          focusNode: widget.focusNode,
          onPressed: widget.onPressed,
          child: widget.child,
        ),
      ),
    );
  }
}
