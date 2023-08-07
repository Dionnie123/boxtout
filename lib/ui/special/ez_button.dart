import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EzButton extends StatelessWidget {
  final String title;
  final bool disabled;
  final bool busy;
  final void Function() onPressed;
  final void Function()? onLongPress;

  const EzButton(
      {super.key,
      required this.title,
      this.disabled = false,
      this.busy = false,
      required this.onPressed,
      this.onLongPress});

  @override
  Widget build(BuildContext context) {
    Widget loading() {
      return Center(
        child: SizedBox(
          width: 30.w,
          height: 30.h,
          child: CircularProgressIndicator(
            strokeWidth: 5.spMin,
            valueColor: const AlwaysStoppedAnimation(Colors.white),
          ),
        ),
      );
    }

    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: ElevatedButton(
        onPressed: disabled
            ? null
            : busy
                ? () {}
                : () => onPressed(),
        child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: busy
                ? loading()
                : Text(
                    title,
                    style: TextStyle(fontSize: 14.sp),
                  )),
      ),
    );
  }
}
