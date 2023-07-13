import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(title: 'Botones', subTitle: 'Varios botones', link: '/buttons', icon: Icons.smart_button_outlined),
  MenuItem(title: 'Tarjetas', subTitle: 'Un contenedor estilisado', link: '/cards', icon: Icons.credit_card),
  MenuItem(title: 'ProgressIndicators', subTitle: 'Generales y controlados', link: '/progress', icon: Icons.refresh_rounded),
  MenuItem(title: 'Snackbar y dialogos', subTitle: 'nuevo snackbar', link: '/snackbar', icon: Icons.info_outline_rounded),
  MenuItem(title: 'Animated', subTitle: 'animated container', link: '/animated', icon: Icons.check_box_outlined),
];