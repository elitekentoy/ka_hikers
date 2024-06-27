


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
}