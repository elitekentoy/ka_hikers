

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../commons/models/event_model.dart';
import '../../../commons/themes/ka_hikers_themes.dart';

class HomeDescriptions extends StatelessWidget {
	const HomeDescriptions({super.key, required this.plan});
	final EventModel plan;

	@override
	Widget build(BuildContext context) {
		return Column(
			mainAxisAlignment: MainAxisAlignment.start,
			children: [
				Expanded(
					child: Text(
						plan.eventName,
						style: blackTextStyle(fontSize: 30, fontWeight: FontWeight.w500),
					),
				),
				Expanded(
					child: Column(
						children: [
							Text(
									plan.meetupPlace,
									style: blackTextStyle(fontSize: 18, fontWeight: FontWeight.normal),
							),
							Text(
									DateFormat.MMMMEEEEd().format(plan.date),
									style: blackTextStyle(fontSize: 12, fontWeight: FontWeight.normal),
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
							size: 18,
						),
						Text(
							"${plan.participantsCount}",
							style: blackTextStyle(fontSize: 14, fontWeight: FontWeight.w200),
						),
					]
				)
			],
		);
	}
}