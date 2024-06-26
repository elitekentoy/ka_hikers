import 'package:flutter/material.dart';

import '../../home/home.dart';
import '../../plans/plans.dart';
import '../../profile/profile.dart';
import '../../statistics/statistics.dart';


class RootAppData {
	static List<Widget> screens = [
		const Home(),
		const Plans(),
		const Statistics(),
		const Profile(),
	];

	static List<BottomNavigationBarItem> items = [
		const BottomNavigationBarItem(
			icon: Icon(Icons.home),
			label: "Home"
		),
		const BottomNavigationBarItem(
			icon: Icon(Icons.navigation_rounded),
			label: "Plans"
		),
		const BottomNavigationBarItem(
			icon: Icon(Icons.bar_chart),
			label: "Statistics"
		),
		const BottomNavigationBarItem(
			icon: Icon(Icons.person),
			label: "Profile"
		),
	];
}
