

import 'package:ka_hikers/commons/constants/ka_hikers_database_details.dart';
import 'package:ka_hikers/commons/models/event_model.dart';

class KaHikersEventManipulation {

	static String insert ({required EventModel event})
	{
		return "INSERT INTO ${KaHikersTables.EVENT} "
			"("
				"${KaHikersColumns.ID}, "
				"${KaHikersColumns.EVENT_NAME}, "
				"${KaHikersColumns.DATE}, "
				"${KaHikersColumns.LOCATION}, "
				"${KaHikersColumns.DESCRIPTION}, "
				"${KaHikersColumns.MEETUP_PLACE}, "
				"${KaHikersColumns.IMAGE}, "
				"${KaHikersColumns.PARTICIPANTS_COUNT}"
			")"
			"VALUES "
			"("
				"'${event.id}', "
				"'${event.eventName}', "
				"'${event.date.toString()}', "
				"'${event.location}', "
				"'${event.description}', "
				"'${event.meetupPlace}', "
				"'${event.image}', "
				"${event.participantsCount}"
			")";
	}

	static String updateParticipantsCountBy ({required EventModel event, required int target})
	{
		return "UPDATE ${KaHikersTables.EVENT} "
			"SET "
				"${KaHikersColumns.PARTICIPANTS_COUNT} = $target "
			"WHERE "
				"${KaHikersColumns.ID} = '${event.id}'";
	}
}