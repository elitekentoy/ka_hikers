

import '../../../../commons/constants/ka_hikers_database_details.dart';

class HikerQuery {

	static String findAllByEventId ({required String eventId})
	{
		return "SELECT * FROM ${KaHikersTables.HIKER} "
			"WHERE ${KaHikersColumns.EVENT_ID} = $eventId";
	}
}