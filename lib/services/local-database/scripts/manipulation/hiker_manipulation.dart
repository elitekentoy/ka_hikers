


import 'package:ka_hikers/commons/models/event_model.dart';

import '../../../../commons/constants/ka_hikers_database_details.dart';
import '../../../../commons/models/hikers_model.dart';

class HikerManipulation {

	static String insert ({required HikersModel hiker})
	{
		return "INSERT INTO ${KaHikersTables.HIKER} "
			"("
				"${KaHikersColumns.USER_ID}, "
				"${KaHikersColumns.EVENT_ID}, "
				"${KaHikersColumns.ROLE_ID}, "
				"${KaHikersColumns.ACTIVE} "
			")"
			"VALUES "
			"("
				"'${hiker.userId}', "
				"'${hiker.eventId}', "
				"${hiker.roleId}, "
				"${hiker.active} "
			")";
	}

	static String deleteByUserId ({required String userId})
	{
		return "DELETE FROM ${KaHikersTables.HIKER} "
			"WHERE ${KaHikersColumns.USER_ID} = $userId";
	}
	
	static String updateActiveByEventAndUserId ({required EventModel event, required int target, required String userId})
	{
		return "UPDATE ${KaHikersTables.HIKER} "
			"SET "
				"${KaHikersColumns.ACTIVE} = $target "
			"WHERE "
				"${KaHikersColumns.EVENT_ID} = '${event.id}' AND "
				"${KaHikersColumns.USER_ID} = '$userId' ";
	}
}