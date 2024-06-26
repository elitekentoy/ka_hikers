

import 'package:flutter/material.dart';

class HomeActions extends StatelessWidget {
	const HomeActions({super.key});

	@override
	Widget build(BuildContext context) {
		return Row(
			mainAxisAlignment: MainAxisAlignment.center,
			children: [
				ElevatedButton(
					onPressed: (){}, 
					child: const Text(
						"Attendance"
					),
				)
			],
		);
	}
}