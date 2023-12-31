import 'package:flutter/material.dart';

class EzButton extends StatelessWidget {
  final String title;
  final bool disabled;
  final bool busy;
  final void Function()? onTap;
  final void Function()? onLongPress;
  final bool outline;
  final IconData? leading;
  final Color? background;
  final Color? foreground;
  final bool rounded;

  const EzButton.elevated(
      {required this.title,
      Key? key,
      this.disabled = false,
      this.busy = false,
      this.onTap,
      this.leading,
      this.background,
      this.foreground,
      this.rounded = false,
      this.onLongPress})
      : outline = false,
        super(key: key);

  const EzButton.outline(
      {required this.title,
      Key? key,
      this.onTap,
      this.leading,
      this.background,
      this.foreground,
      this.rounded = false,
      this.onLongPress})
      : disabled = false,
        busy = false,
        outline = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final customButtonColor = MaterialStateProperty.all(background);

    final buttonRadius = MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius:
            rounded ? BorderRadius.circular(30.0) : BorderRadius.circular(8.0),
      ),
    );
    final buttonBorder = MaterialStateProperty.all(
      BorderSide(
        color: background ?? Theme.of(context).colorScheme.primary,
        width: 1.0,
        style: BorderStyle.solid,
      ),
    );

    Widget loading() {
      return const Center(
        child: SizedBox(
          width: 30,
          height: 30,
          child: CircularProgressIndicator(
            strokeWidth: 8,
            valueColor: AlwaysStoppedAnimation(Colors.white),
          ),
        ),
      );
    }

    Widget icon() {
      if (leading != null) {
        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            leading,
            color: outline ? background : foreground,
            size: 22,
          ),
        );
      }
      return const SizedBox.shrink();
    }

    Widget text() {
      return Text(
        title,
        style:
            TextStyle(fontSize: 16, color: outline ? background : foreground),
      );
    }

    Widget content() {
      return busy
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [loading()],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [icon(), text()],
            );
    }

    Widget outlinedButton() {
      return OutlinedButton(
        style: disabled
            ? null
            : ButtonStyle(
                shape: buttonRadius,
                side: buttonBorder,
              ),
        onPressed: busy || disabled ? () {} : () => onTap!(),
        onLongPress: busy || disabled || busy ? () {} : onLongPress,
        child: content(),
      );
    }

    Widget elevatedButton() {
      return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: customButtonColor,
        ),
        onPressed: disabled || busy ? null : onTap,
        onLongPress: disabled || busy ? null : onLongPress,
        child: content(),
      );
    }

    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 48.0,
        maxHeight: 48.0,
        minWidth: 120,
        maxWidth: double.infinity,
      ),
      child: outline ? outlinedButton() : elevatedButton(),
    );
  }
}
