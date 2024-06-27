

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/add_user_controller.dart';
import 'widget/add_user_form.dart';

class AddUser extends StatelessWidget {
	const AddUser({super.key});

	@override
	Widget build(BuildContext context) {
		Get.put(AddUserController());
		return const Scaffold(
			body: SafeArea(
				child:  AddUserForm(),
			),
		);
	}
}