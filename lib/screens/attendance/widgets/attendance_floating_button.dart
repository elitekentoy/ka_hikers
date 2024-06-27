

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../add-user/add_user.dart';


class AttendanceFloatingButton extends StatelessWidget {
	const AttendanceFloatingButton({super.key});

	@override
	Widget build(BuildContext context) {
		return FloatingActionButton(
			onPressed: (){
				Get.to(() => const AddUser());
			},
			child: const Icon(Icons.add),
		);
	}
}