

import 'package:get/get.dart';

import '../../../commons/data/users_data.dart';
import '../../../commons/models/event_model.dart';


class AttendanceController extends GetxController {

	final EventModel event;
	AttendanceController({required this.event});

	final attendees = DUMMY_USERS.obs;
}