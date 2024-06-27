

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/controller/home_controller.dart';
import 'controller/attendance_controller.dart';
import 'widgets/attendance_feed.dart';
import 'widgets/attendance_floating_button.dart';


class Attendance extends StatelessWidget {
	const Attendance({super.key});

	@override
	Widget build(BuildContext context) {
		final homeController = Get.find<HomeController>();
		Get.put(AttendanceController(event: homeController.events.first));
		return const Scaffold(
			body: SafeArea(
				child: AttendanceFeed(),
			),
			floatingActionButton: AttendanceFloatingButton(),
		);
	}
}