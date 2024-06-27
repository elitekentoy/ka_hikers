

import 'package:ka_hikers/services/local-database/scripts/query/hiker_query.dart';
import 'package:sqflite/sqflite.dart';

import '../../../commons/models/event_model.dart';
import '../../../commons/models/hikers_model.dart';
import '../scripts/manipulation/hiker_manipulation.dart';
import 'local_database.dart';

class HikerDatabaseService {

	static Future<Database> _database() async => await LocalDatabase.getDatabase();

	static Future<void> insert ({required HikersModel hiker}) async
	{
		await _database().then((db) => db.rawInsert(HikerManipulation.insert(hiker: hiker)));
	}

	static Future<void> deleteByUserId ({required String userId}) async
	{
		await _database().then((db) => db.rawDelete(HikerManipulation.deleteByUserId(userId: userId)));
	}

	static Future<List<HikersModel>> findAllByEventId ({required String eventId}) async
	{
		final List<Map<String, dynamic>> data = await _database().then((db) => db.rawQuery(HikerQuery.findAllByEventId(eventId: eventId)));
		return HikersModel.toHikerModels(data: data);
	}

	static Future<void> updateActiveByEventAndUserId ({required EventModel event, required int target, required String userId}) async
	{
		await _database().then((db) => db.rawUpdate(HikerManipulation.updateActiveByEventAndUserId(event: event, target: target, userId: userId)));
	}
}