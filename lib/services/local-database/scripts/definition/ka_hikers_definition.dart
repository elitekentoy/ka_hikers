
// ignore_for_file: constant_identifier_names


import '../../../../commons/constants/ka_hikers_database_details.dart';

class KaHikersDefinition {
	
	static const String CREATE_ROLES_TABLE = "CREATE TABLE ${KaHikersTables.ROLE}"
		"("
			"${KaHikersColumns.ID} INTEGER PRIMARY KEY, "
			"${KaHikersColumns.NAME} TEXT, "
			"${KaHikersColumns.DESCRIPTION} TEXT"
		")";

}