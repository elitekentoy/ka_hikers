

import '../../../../commons/constants/ka_hikers_database_details.dart';

class KaHikersRoleQuery {

	static String findAll()
	{
		return "SELECT * FROM ${KaHikersTables.ROLE}";
	}

}