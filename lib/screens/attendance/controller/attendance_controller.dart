

import 'package:get/get.dart';
import 'package:ka_hikers/commons/models/hikers_model.dart';

import '../../../commons/models/event_model.dart';
import '../../../commons/models/user_model.dart';
import '../../../services/local-database/db-services/hiker_database_service.dart';
import '../../../services/local-database/db-services/users_database_service.dart';


class AttendanceController extends GetxController {

	final EventModel event;
	AttendanceController({required this.event});

	final attendees = <UserModel>[].obs;
	final hikers = <HikersModel>[].obs;

	@override
	void onInit() async {
		reloadData();
		super.onInit();
	}

	Future<void> reloadData() async
	{
		attendees.clear();
		loadData();
	}

	Future<void> loadData() async
	{
		hikers.addAll(await HikerDatabaseService.findAllByEventId(eventId: event.id));
		final userIds = hikers.map((each) => each.userId).toList();
		attendees.addAll(await UsersDatabaseService.findAllByUserIdIn(userIds: userIds));
	}

	bool isHikerActive({required String userId})
	{
		final data = hikers.firstWhereOrNull((each) => each.userId == userId);
		return data == null ? false : data.active;
	}
}