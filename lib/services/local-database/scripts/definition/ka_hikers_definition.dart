
// ignore_for_file: constant_identifier_names


import '../../../../commons/constants/ka_hikers_database_details.dart';

class KaHikersDefinition {
	
	static const String CREATE_ROLES_TABLE = "CREATE TABLE ${KaHikersTables.ROLE}"
		"("
			"${KaHikersColumns.ID} INTEGER PRIMARY KEY, "
			"${KaHikersColumns.NAME} TEXT, "
			"${KaHikersColumns.DESCRIPTION} TEXT"
		")";

	static const String CREATE_EVENT_TABLE = "CREATE TABLE ${KaHikersTables.EVENT}"
		"("
				"${KaHikersColumns.ID} TEXT PRIMARY KEY, "
				"${KaHikersColumns.EVENT_NAME} TEXT, "
				"${KaHikersColumns.DATE} TEXT, "
				"${KaHikersColumns.LOCATION} TEXT, "
				"${KaHikersColumns.DESCRIPTION} TEXT, "
				"${KaHikersColumns.MEETUP_PLACE} TEXT, "
				"${KaHikersColumns.IMAGE} TEXT, "
				"${KaHikersColumns.PARTICIPANTS_COUNT} INTEGER"
			")";
}