import 'package:flutter/material.dart';

class CurvedNotchedTabBar extends StatefulWidget {
  final ValueChanged<int>? onTabSelected;
  final int? initialSelectedIndex;

  const CurvedNotchedTabBar({super.key, this.onTabSelected, this.initialSelectedIndex});

  @override
  // ignore: library_private_types_in_public_api
  _CurvedNotchedTabBarState createState() => _CurvedNotchedTabBarState();
}

class _CurvedNotchedTabBarState extends State<CurvedNotchedTabBar> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialSelectedIndex ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildTabItem(0, Icons.food_bank),
          _buildTabItem(1, Icons.local_cafe),
          const SizedBox(width: 48), // to leave space for the centered FAB
          _buildTabItem(2, Icons.local_dining),
          _buildTabItem(3, Icons.cake),
        ],
      ),
    );
  }

  Widget _buildTabItem(int index, IconData iconData) {
    return IconButton(
      icon: Icon(
        iconData,
        color: _selectedIndex == index ? Colors.teal : Colors.grey,
      ),
      onPressed: () {
        setState(() {
          _selectedIndex = index;
        });
        if (widget.onTabSelected != null) {
          widget.onTabSelected!(_selectedIndex);
        }
      },
    );
  }
}
