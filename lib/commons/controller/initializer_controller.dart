
import 'package:get/get.dart';
import 'package:ka_hikers/commons/data/roles_data.dart';

import '../../services/local-database/db-services/roles_database_service.dart';
import '../models/role_model.dart';

class InitializerController extends GetxController {

	@override
	void onInit() async {
		await _initializeRoles();
		super.onInit();
	}


	Future<void> _initializeRoles() async 
	{
		final List<Role> databaseData = await RolesDatabaseService.findAll();

		if (databaseData.length != RolesData.roles.length) {
			// delete all
			await RolesDatabaseService.deleteAll();

			//insert each role
			for (final Role role in RolesData.roles) {
				await RolesDatabaseService.insert(role: role);
			}
		}
	}
}