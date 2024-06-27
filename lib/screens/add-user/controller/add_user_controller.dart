

import 'package:get/get.dart';

import '../../../commons/models/hikers_model.dart';
import '../../../commons/models/user_model.dart';
import '../../../services/local-database/db-services/event_database_service.dart';
import '../../../services/local-database/db-services/hiker_database_service.dart';
import '../../../services/local-database/db-services/users_database_service.dart';
import '../../attendance/controller/attendance_controller.dart';

class AddUserController extends GetxController {

	final attendanceController = Get.find<AttendanceController>();
	Future<void> insertToHikers({required UserModel user}) async {
		final event = attendanceController.event;
		// add to users table
		await UsersDatabaseService.insert(user: user);
		//add to hikers table
		await HikerDatabaseService.insert(hiker: HikersModel.create(userId: user.id, eventId: event.id));
		//update event participant count
		await EventDatabaseService.updateParticipantsCountBy(event: event, target: event.participantsCount + 1);
	}
}