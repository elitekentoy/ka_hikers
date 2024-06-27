
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

	static const String CREATE_USER_TABLE = "CREATE TABLE ${KaHikersTables.USER}"
		"("
			"${KaHikersColumns.ID} TEXT PRIMARY KEY, "
			"${KaHikersColumns.FIRST_NAME} TEXT, "
			"${KaHikersColumns.LAST_NAME} TEXT, "
			"${KaHikersColumns.NICKNAME} TEXT, "
			"${KaHikersColumns.FACEBOOK} TEXT, "
			"${KaHikersColumns.DATE_CREATED} TEXT, "
			"${KaHikersColumns.IMAGE}"
		")";

	static const String CREATE_HKERS_TABLE = "CREATE TABLE ${KaHikersTables.HIKER}"
		"("
			"${KaHikersColumns.USER_ID} TEXT, "
			"${KaHikersColumns.EVENT_ID} TEXT, "
			"${KaHikersColumns.ROLE_ID} INTEGER, "
			"${KaHikersColumns.ACTIVE} INTEGER, "

			"FOREIGN KEY (${KaHikersColumns.USER_ID}) REFERENCES ${KaHikersTables.USER}(${KaHikersColumns.ID}), "
			"FOREIGN KEY (${KaHikersColumns.EVENT_ID}) REFERENCES ${KaHikersTables.EVENT}(${KaHikersColumns.ID}), "
			"FOREIGN KEY (${KaHikersColumns.ROLE_ID}) REFERENCES ${KaHikersTables.ROLE}(${KaHikersColumns.ID})"
		")";
}