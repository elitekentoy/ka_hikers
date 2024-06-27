

import 'package:get/get.dart';
import 'package:ka_hikers/services/local-database/db-services/event_database_service.dart';

import '../../../commons/models/event_model.dart';

class HomeController extends GetxController {
	final events = <EventModel>[].obs;

	@override
	void onInit() async {
		events.addAll(await EventDatabaseService.findAll());
		super.onInit();
	}
}