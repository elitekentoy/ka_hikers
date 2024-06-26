
import 'package:sqflite/sqflite.dart';

import '../../../commons/function/ka_hikers_model_mapper.dart';
import '../../../commons/models/role_model.dart';
import '../scripts/query/ka_hikers_role_query.dart';
import 'local_database.dart';

class RolesDatabaseService {

	static Future<Database> _database() async => await LocalDatabase.getDatabase();

	static Future<List<Role>> findAll() async
	{
		return KaHikersModelMapper.toRoles(data: await _database()
			.then((db) => db.rawQuery(KaHikersRoleQuery.findAll())));
	}
}