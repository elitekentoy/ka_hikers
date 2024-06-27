

import 'package:ka_hikers/commons/constants/ka_hikers_database_details.dart';

class UsersQuery {

	static String findAllByUserIdIn({required List<String> userIds})
	{
		final placeholder = userIds.map((each) => "'$each'").join(',');
		return "SELECT * FROM ${KaHikersTables.USER} "
			"WHERE ${KaHikersColumns.ID} IN ($placeholder)";
	}
	
}