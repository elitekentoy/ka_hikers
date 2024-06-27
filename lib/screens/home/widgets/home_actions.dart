

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ka_hikers/commons/themes/ka_hikers_themes.dart';

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
					child: Text(
						"Attendance",
						style: blackTextStyle(fontSize: 14, fontWeight: FontWeight.w200),
					),
				)
			],
		);
	}
}