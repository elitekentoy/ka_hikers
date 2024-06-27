

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../commons/data/plans_data.dart';
import 'controller/attendance_controller.dart';
import 'widgets/attendance_feed.dart';
import 'widgets/attendance_floating_button.dart';


class Attendance extends StatelessWidget {
	const Attendance({super.key});

	@override
	Widget build(BuildContext context) {
		Get.put(AttendanceController(event: DUMMY_PLANS.first));
		return const Scaffold(
			body: SafeArea(
				child: AttendanceFeed(),
			),
			floatingActionButton: AttendanceFloatingButton(),
		);
	}
}