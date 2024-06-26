import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
	const CustomBottomNavBar({
		super.key,
		this.currentIndex = 0,
		this.onTap,
		required this.items,
		required this.backgroundColor,
	});
	final int currentIndex;
	final void Function(int)? onTap;
	final List<BottomNavigationBarItem> items;
	final Color backgroundColor;

	@override
	Widget build(BuildContext context) {
		return BottomNavigationBar(
			items: items,
			backgroundColor: backgroundColor,
			onTap: onTap,
			currentIndex: currentIndex,
			type: BottomNavigationBarType.fixed,
			selectedItemColor: Colors.red,
			unselectedItemColor: const Color(0xFF8C8A8A),
			showUnselectedLabels: false,
			showSelectedLabels: false,
			iconSize: 32.0,
			elevation: 0.0,
		);
	}
}
