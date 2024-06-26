


import '../models/role_model.dart';

class KaHikersModelMapper {

	static List<Role> toRoles ({required List<Map<String, dynamic>> data})
	{
		if (data.isEmpty) return [];
		return data.map((each) => Role.fromMap(map: each)).toList();
	}
}