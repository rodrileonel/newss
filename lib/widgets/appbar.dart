import 'package:flutter/material.dart';

class NewsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NewsAppBar({
    Key? key,
    this.backgroundColor,
    this.titleColor,
    required this.title,
  }) : super(key: key);

  final Color? backgroundColor;
  final Color? titleColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 20),
            child: Text(title, style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(color: titleColor)),
          ),
        ],
      ),
      titleSpacing: 0,
      backgroundColor: backgroundColor ?? Theme.of(context).appBarTheme.backgroundColor,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(82);
}
