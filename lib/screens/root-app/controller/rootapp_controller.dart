

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/rootapp_data.dart';

class RootAppController extends GetxController {

	final tab = 0.obs;
	List<Widget> screens = RootAppData.screens;
	List<BottomNavigationBarItem> navItems = RootAppData.items;


	Widget get currentScreen => screens[tab.value];
}