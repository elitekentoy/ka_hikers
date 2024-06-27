

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../attendance/attendance.dart';


class HomeActions extends StatelessWidget {
	const HomeActions({super.key});

	@override
	Widget build(BuildContext context) {
		return Row(
			mainAxisAlignment: MainAxisAlignment.center,
			children: [
				ElevatedButton(
					onPressed: () {
						Get.to(() => const Attendance());
					}, 
					child: const Text(
						"Attendance"
					),
				)
			],
		);
	}
}