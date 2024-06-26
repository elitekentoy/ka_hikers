import 'package:flutter/material.dart';
import 'package:ka_hikers/commons/themes/ka_hikers_themes.dart';

import '../../../commons/models/event_model.dart';

class PlanTile extends StatelessWidget {
	const PlanTile({super.key, required this.event});
	final EventModel event;

	@override
	Widget build(BuildContext context) {
		return ListTile(
			leading: Image.network(event.image),
			title: Text(
						event.eventName,
						style: blackTextStyle(fontSize: 18, fontWeight: FontWeight.w400),
					),
			subtitle: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: [
					Text(
						event.meetupPlace,
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
								"${event.participantsCount}",
								style: blackTextStyle(fontSize: 12, fontWeight: FontWeight.w200),
							),
						]
					)
				],
			),
		);
	}
}