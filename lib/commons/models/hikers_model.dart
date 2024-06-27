

import 'package:ka_hikers/commons/constants/ka_hikers_database_details.dart';

class HikersModel {

	final String userId;
	final String eventId;
	final int roleId;
	final bool active;

	HikersModel({
		required this.userId,
		required this.eventId,
		required this.roleId,
		required this.active
	});
	
	factory HikersModel.fromMap({required Map<String, dynamic> map})
	{
		return HikersModel(
			userId: map[KaHikersColumns.USER_ID], 
			eventId: map[KaHikersColumns.EVENT_ID], 
			roleId: map[KaHikersColumns.ROLE_ID], 
			active: map[KaHikersColumns.ACTIVE] == 1, 
		);
	}

	factory HikersModel.create({required String userId, required String eventId})
	{
		return HikersModel(
			userId: userId, 
			eventId: eventId, 
			roleId: 3, 
			active: false,
		);
	}

	static List<HikersModel> toHikerModels ({required List<Map<String, dynamic>> data})
	{
		if (data.isEmpty) return[];
		return data.map((each) => HikersModel.fromMap(map: each)).toList();
	}
}