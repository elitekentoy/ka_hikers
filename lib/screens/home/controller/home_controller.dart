

import 'package:get/get.dart';
import 'package:ka_hikers/services/local-database/db-services/event_database_service.dart';

import '../../../commons/models/event_model.dart';

class HomeController extends GetxController {
	final events = <EventModel>[].obs;

	@override
	void onInit() async {
		loadData();
		print(events.map((each) => "${each.id} ${each.eventName} ${each.participantsCount}"));
		super.onInit();
	}

	Future<void> reloadData() async
	{
		events.clear();
		events.addAll(await EventDatabaseService.findAll());
	}

	Future<void> loadData() async
	{
		events.addAll(await EventDatabaseService.findAll());
	}
}