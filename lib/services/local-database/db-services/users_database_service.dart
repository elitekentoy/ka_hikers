

import 'package:sqflite/sqflite.dart';

import '../../../commons/models/user_model.dart';
import '../scripts/manipulation/users_manipulation.dart';
import '../scripts/query/users_query.dart';
import 'local_database.dart';

class UsersDatabaseService {

	static Future<Database> _database() async => await LocalDatabase.getDatabase();

	static Future<void> insert ({required UserModel user}) async
	{
		await _database().then((db) => db.rawInsert(UsersManipulation.insert(user: user)));
	}

	static Future<void> delete ({required UserModel user}) async
	{
		await _database().then((db) => db.rawDelete(UsersManipulation.deleteByUserId(userId: user.id)));
	}
	
	static Future<List<UserModel>> findAllByUserIdIn ({required List<String> userIds}) async
	{
		final List<Map<String, dynamic>> data = await _database().then((db) => db.rawQuery(UsersQuery.findAllByUserIdIn(userIds: userIds)));
		return UserModel.toUserModels(data: data);
	}
}