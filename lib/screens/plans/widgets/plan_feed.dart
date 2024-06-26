
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ka_hikers/screens/plans/widgets/plan_tile.dart';

import '../controller/plans_controller.dart';

class PlanFeed extends StatelessWidget {
	const PlanFeed({super.key});

	@override
	Widget build(BuildContext context) {
		final controller = Get.find<PlansController>();
		return Container(
			color: Colors.white,
			child: Obx((){
				return ListView.builder(
					itemCount: controller.plans.length,
					itemBuilder: (context, index) {
						final plan = controller.plans[index];
						return PlanTile(event: plan);
					},
				);
			}),
		);
	}
}