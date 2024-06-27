



import '../../../../commons/constants/ka_hikers_database_details.dart';
import '../../../../commons/models/user_model.dart';

class UsersManipulation {

	static String insert ({required UserModel user})
	{
		return "INSERT INTO ${KaHikersTables.USER} "
			"("
				"${KaHikersColumns.ID}, "
				"${KaHikersColumns.FIRST_NAME}, "
				"${KaHikersColumns.LAST_NAME}, "
				"${KaHikersColumns.NICKNAME}, "
				"${KaHikersColumns.FACEBOOK}, "
				"${KaHikersColumns.DATE_CREATED}, "
				"${KaHikersColumns.IMAGE}"
			")"
			"VALUES "
			"("
				"'${user.id}', "
				"'${user.firstName}', "
				"'${user.lastName}', "
				"'${user.nickname}', "
				"'${user.facebook}', "
				"'${user.dateCreated}', "
				"'${user.image}'"
			")";
	}

	static String deleteByUserId ({required String userId})
	{
		return "DELETE FROM ${KaHikersTables.USER} "
			"WHERE ${KaHikersColumns.ID} = '$userId'";
	}
}