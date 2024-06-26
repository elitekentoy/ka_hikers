import 'package:flutter/material.dart';
import 'package:ka_hikers/commons/themes/ka_hikers_themes.dart';

import '../../../commons/models/plan_model.dart';

class PlanTile extends StatelessWidget {
	const PlanTile({super.key, required this.plan});
	final PlanModel plan;

	@override
	Widget build(BuildContext context) {
		return ListTile(
			leading: Image.network(plan.image),
			title: Text(
						plan.title,
						style: blackTextStyle(fontSize: 18, fontWeight: FontWeight.w400),
					),
			subtitle: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: [
					Text(
						plan.meetupPlace,
						style: blackTextStyle(fontSize: 12, fontWeight: FontWeight.w300),
					),
					Row(
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
			),
		);
	}
}