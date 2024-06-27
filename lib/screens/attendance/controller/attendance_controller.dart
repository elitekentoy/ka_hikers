

import 'package:get/get.dart';

import '../../../commons/models/event_model.dart';
import '../../../commons/models/user_model.dart';
import '../../../services/local-database/db-services/hiker_database_service.dart';
import '../../../services/local-database/db-services/users_database_service.dart';


class AttendanceController extends GetxController {

	final EventModel event;
	AttendanceController({required this.event});

	final attendees = <UserModel>[].obs;

	@override
	void onInit() async {
		final hikers = await HikerDatabaseService.findAllByEventId(eventId: event.id);
		final userIds = hikers.map((each) => each.userId).toList();
		attendees.addAll(await UsersDatabaseService.findAllByUserIdIn(userIds: userIds));
		super.onInit();
	}
}