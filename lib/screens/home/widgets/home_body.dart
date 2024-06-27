

import 'package:flutter/material.dart';

import '../../../commons/data/plans_data.dart';
import 'home_actions.dart';
import 'home_descriptions.dart';
import 'home_image.dart';

class HomeBody extends StatelessWidget {
	const HomeBody({super.key});

	@override
	Widget build(BuildContext context) {
		final event = DUMMY_PLANS.first;
		return Padding(
			padding: const EdgeInsets.symmetric(horizontal: 20),
			child: Column(
				mainAxisAlignment: MainAxisAlignment.spaceAround,
				children: [
					Expanded(
						flex: 3,
						child: HomeImage(image: event.image),
					),
					Expanded(
						flex: 2,
						child: HomeDescriptions(plan: event),
					),
					const Expanded(
						flex: 1,
						child: HomeActions(),
					)
				],
			),
		);
	}
}