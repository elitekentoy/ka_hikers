

import 'package:flutter/material.dart';
import 'package:ka_hikers/commons/models/role_model.dart';

import '../../../services/local-database/db-services/roles_database_service.dart';

class HomeActions extends StatelessWidget {
	const HomeActions({super.key});

	@override
	Widget build(BuildContext context) {
		return Row(
			mainAxisAlignment: MainAxisAlignment.center,
			children: [
				ElevatedButton(
					onPressed: () async {
						print("im clicked");
						final List<Role> data = await RolesDatabaseService.findAll();
						data.forEach((each) => print(each.name));
					}, 
					child: const Text(
						"Attendance"
					),
				)
			],
		);
	}
}