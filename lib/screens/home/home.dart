
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/home_controller.dart';
import 'widgets/home_body.dart';

class Home extends StatelessWidget {
	const Home({super.key});

	@override
	Widget build(BuildContext context) {
		Get.put(HomeController());
		return const Scaffold(
			body: HomeBody(),
		);
	}
}