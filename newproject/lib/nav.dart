import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  final List<NavigationDestination> destinations;
  final int currentIndex;
  final Function(int) onTap;

  NavigationBar({
    required this.destinations,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: destinations.map((destination) {
        return BottomNavigationBarItem(
          icon: destination.icon,
          label: destination.label,
        );
      }).toList(),
    );
  }
}

class NavigationDestination {
  final Icon icon;
  final String label;

  NavigationDestination({
    required this.icon,
    required this.label,
  });
}