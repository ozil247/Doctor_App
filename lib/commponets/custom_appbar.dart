import 'package:doctor_app/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppbar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppbar(
      {super.key, this.appTile, this.route, required this.icon, this.action});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  final String? appTile;
  final String? route;
  final FaIcon icon;
  final List<Widget>? action;

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        widget.appTile!,
        style: const TextStyle(fontSize: 20, color: Colors.black),
      ),
      leading: widget.icon != null
          ? Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: config.primaryColor),
              child: IconButton(
                onPressed: () {
                  //if route is given,  then this icon button will navigate to the route
                  if (widget.route != null) {
                    Navigator.of(context).pushNamed(widget.route!);
                  } else {
                    //else pop back to  previous page

                    Navigator.of(context).pop();
                  }
                },
                icon: widget.icon!,
                iconSize: 16,
                color: Colors.white,
              ),
            )
          : null,
      actions: widget.action ?? null,
    );
  }
}
