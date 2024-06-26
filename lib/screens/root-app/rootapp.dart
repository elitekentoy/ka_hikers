

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../commons/widgets/navigation/custo_bottom_nav_bar.dart';
import 'controller/rootapp_controller.dart';


class RootApp extends StatelessWidget {
	const RootApp({super.key});

	@override
	Widget build(BuildContext context) {
		final controller = Get.put(RootAppController());
		return Scaffold(
			body: SafeArea(
				child: Obx(() => controller.currentScreen)
			),
			bottomNavigationBar: Obx(() => 
				CustomBottomNavBar(
					items: controller.navItems,
					currentIndex: controller.tab(),
					onTap: controller.tab,
					backgroundColor: Colors.white,
				)
			),
		);
	}
}