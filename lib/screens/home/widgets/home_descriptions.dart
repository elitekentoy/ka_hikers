

import 'package:flutter/material.dart';

import '../../../commons/models/plan_model.dart';
import '../../../commons/themes/ka_hikers_themes.dart';

class HomeDescriptions extends StatelessWidget {
	const HomeDescriptions({super.key, required this.plan});
	final PlanModel plan;

	@override
	Widget build(BuildContext context) {
		return Column(
			mainAxisAlignment: MainAxisAlignment.start,
			children: [
				Expanded(
					child: Text(
						plan.title,
						style: blackTextStyle(fontSize: 24, fontWeight: FontWeight.w500),
					),
				),
				Expanded(
					child: Column(
						children: [
							Text(
									plan.meetupPlace,
									style: blackTextStyle(fontSize: 14, fontWeight: FontWeight.normal),
							),
							Text(
									plan.date.toString(),
									style: blackTextStyle(fontSize: 14, fontWeight: FontWeight.normal),
								),
						],
					),
				),
				Row(
					mainAxisAlignment: MainAxisAlignment.center,
					children: [
						const Icon(
							Icons.person,
							color: Colors.grey,
							size: 14,
						),
						Text(
							"${plan.participantsCount}",
							style: blackTextStyle(fontSize: 12, fontWeight: FontWeight.w200),
						),
					]
				)
			],
		);
	}
}