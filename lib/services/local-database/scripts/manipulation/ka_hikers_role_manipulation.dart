


import '../../../../commons/constants/ka_hikers_database_details.dart';
import '../../../../commons/models/role_model.dart';

class KaHikersRoleManipulation {

	static String insert ({required Role role})
	{
		return "INSERT INTO ${KaHikersTables.ROLE} "
			"("
				"${KaHikersColumns.ID}, "
				"${KaHikersColumns.NAME}, "
				"${KaHikersColumns.DESCRIPTION}"
			")"
			"VALUES "
			"("
				"${role.id}, "
				"'${role.name}', "
				"'${role.description}'"
			")";
	}

	static String deleteAll()
	{
		return "DELETE FROM ${KaHikersTables.ROLE}";
	}

}