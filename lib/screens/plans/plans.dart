
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/plans_controller.dart';
import 'widgets/plan_feed.dart';

class Plans extends StatelessWidget {
	const Plans({super.key});

	@override
	Widget build(BuildContext context) {
		Get.put(PlansController());
		return const PlanFeed();
	}
}