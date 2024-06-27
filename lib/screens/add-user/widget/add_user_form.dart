

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commons/models/user_model.dart';
import '../../../commons/themes/ka_hikers_themes.dart';
import '../../attendance/controller/attendance_controller.dart';
import '../../home/controller/home_controller.dart';
import '../controller/add_user_controller.dart';


class AddUserForm extends StatefulWidget {
	const AddUserForm({super.key});

	@override
	State<AddUserForm> createState() => _AddUserFormState();
}

class _AddUserFormState extends State<AddUserForm> {

	final _formKey = GlobalKey<FormState>();

	@override
	Widget build(BuildContext context) {
		final TextEditingController firstName = TextEditingController();
		final TextEditingController lastName = TextEditingController();
		final TextEditingController nickname = TextEditingController();
		final TextEditingController facebook = TextEditingController();
		final controller = Get.find<AddUserController>();
		final attendanceController = Get.find<AttendanceController>();
		final homeController = Get.find<HomeController>();

		return Form(
			key: _formKey,
			child: Padding(
				padding: const EdgeInsets.all(24.0),
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.center,
					children: [
						TextFormField(
							controller: firstName,
							decoration: const InputDecoration(
								hintText: "First Name..."
							),
							validator: (value) {
								if (value == null || value.isEmpty) {
									return "Please enter some text";
								}
								return null;
							},
						),
						TextFormField(
							controller: lastName,
							decoration: const InputDecoration(
								hintText: "Last Name..."
							),
							validator: (value) {
								if (value == null || value.isEmpty) {
									return "Please enter some text";
								}
								return null;
							},
						),
						TextFormField(
							controller: nickname,
							decoration: const InputDecoration(
								hintText: "Nickname..."
							),
							validator: (value) {
								if (value == null || value.isEmpty) {
									return "Please enter some text";
								}
								return null;
							},
						),
						TextFormField(
							controller: facebook,
							decoration: const InputDecoration(
								hintText: "Facebook..."
							),
							validator: (value) {
								if (value == null || value.isEmpty) {
									return "Please enter some text";
								}
								return null;
							},
						),
						const SizedBox(height: 100),
						ElevatedButton(
							onPressed: () async {
								if (_formKey.currentState!.validate()) {
									final user = UserModel.create(
										firstName: firstName.text, 
										lastName: lastName.text, 
										nickname: nickname.text, 
										facebook: facebook.text,
									);
									await controller.insertToHikers(user: user);
									await attendanceController.reloadData();
									await homeController.reloadData();
									Get.back();
								}
							}, 
							child: Text(
								"Submit",
								style: blackTextStyle(fontSize: 12, fontWeight: FontWeight.w400),
							),
						)
					],
				),
			),
		);
	}
}