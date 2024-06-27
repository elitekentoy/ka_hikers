

import 'package:get/get.dart';
import 'package:ka_hikers/commons/models/hikers_model.dart';
import 'package:ka_hikers/services/local-database/db-services/event_database_service.dart';

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

	Future<void> updateActive({required UserModel user, required bool active}) async
	{
		// reverse its active
		await HikerDatabaseService.updateActiveByEventAndUserId(event: event, target: active ? 0 : 1, userId: user.id);
	}

	Future<void> deleteHiker({required UserModel user}) async
	{
		// delete hiker record
		await HikerDatabaseService.deleteByUserId(userId: user.id);
		// delete user
		await UsersDatabaseService.delete(user: user);
		// update participants count
		await EventDatabaseService.updateParticipantsCountBy(event: event, target: event.participantsCount - 1);
	}

	Future<void> reloadData() async
	{
		attendees.clear();
		hikers.clear();
		loadData();
	}

	Future<void> loadData() async
	{
		hikers.addAll(await HikerDatabaseService.findAllByEventId(eventId: event.id));
		final userIds = hikers.map((each) => each.userId).toList();
		attendees.addAll(await UsersDatabaseService.findAllByUserIdIn(userIds: userIds));
		update();
	}

	bool isHikerActive({required String userId})
	{
		final data = hikers.firstWhereOrNull((each) => each.userId == userId);
		return data == null ? false : data.active;
	}
}