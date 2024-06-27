
import 'package:get/get.dart';

import '../../services/local-database/db-services/event_database_service.dart';
import '../../services/local-database/db-services/local_database.dart';
import '../../services/local-database/db-services/roles_database_service.dart';
import '../data/plans_data.dart';
import '../data/roles_data.dart';
import '../models/event_model.dart';
import '../models/role_model.dart';

class InitializerController extends GetxController {

	@override
	void onInit() async {
		await LocalDatabase.printDatabases();
		await _initializeRoles();
		await _initializeEventTemporarily();
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

	Future<void> _initializeEventTemporarily() async
	{
		final List<EventModel> databaseData = await EventDatabaseService.findAll();
		
		//Insert Mt. Naupa for now
		if (databaseData.isEmpty) {
			await EventDatabaseService.insert(event: DUMMY_PLANS.first);
		}
	}
}