import 'package:boxtout/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';

class TitleDivider extends StatelessWidget {
  final String title;
  const TitleDivider(this.title, {super.key, required});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      sliver: SliverToBoxAdapter(
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18).copyWith(
                fontWeight: FontWeight.w900,
              ),
            ),
            hSpaceSmall,
            const Expanded(
                child: Divider(
              height: 1,
              thickness: 1,
            ))
          ],
        ),
      ),
    );
  }
}
