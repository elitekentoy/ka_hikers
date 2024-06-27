

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../controller/attendance_controller.dart';
import 'attendance_tile.dart';


class AttendanceFeed extends StatelessWidget {
	const AttendanceFeed({super.key});

	@override
	Widget build(BuildContext context) {
		final controller = Get.find<AttendanceController>();
		return Obx((){
			return ListView.builder(
				itemCount: controller.attendees.length,
				itemBuilder: (context, index) {
					final user = controller.attendees[index];
					return AttendanceTile(user: user, active: index % 2 == 1);
				},
			);
		});
	}
}