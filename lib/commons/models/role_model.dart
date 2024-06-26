

import '../constants/ka_hikers_database_details.dart';

class Role {

	final int id;
	final String name;
	final String description;

	Role({
		required this.id,
		required this.name,
		required this.description
	});

	factory Role.fromMap({required Map<String, dynamic> map})
	{
		return Role(
			id: map[KaHikersColumns.ID], 
			name: map[KaHikersColumns.NAME], 
			description: map[KaHikersColumns.DESCRIPTION],
		);
	}
	
}