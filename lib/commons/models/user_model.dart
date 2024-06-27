
import 'package:ka_hikers/commons/constants/ka_hikers_database_details.dart';

class UserModel {

	final String id;
	final String firstName;
	final String lastName;
	final String nickname;
	final String facebook;
	final DateTime dateCreated;
	final String? image;

	UserModel({
		required this.id,
		required this.firstName,
		required this.lastName,
		required this.nickname,
		required this.facebook,
		required this.dateCreated,
		this.image,
	});

	factory UserModel.fromMap({required Map<String, dynamic> map})
	{
		return UserModel(
			id: map[KaHikersColumns.ID], 
			firstName: map[KaHikersColumns.FIRST_NAME], 
			lastName: map[KaHikersColumns.LAST_NAME], 
			nickname: map[KaHikersColumns.NICKNAME], 
			facebook: map[KaHikersColumns.FACEBOOK], 
			dateCreated: DateTime.parse(map[KaHikersColumns.DATE_CREATED]),
		);
	}

	static List<UserModel> toUserModels({required List<Map<String, dynamic>> data})
	{
		if (data.isEmpty) return [];
		return data.map((each) => UserModel.fromMap(map: each)).toList();
	}
}