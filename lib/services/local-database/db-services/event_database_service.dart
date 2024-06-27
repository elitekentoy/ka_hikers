import 'package:sqflite/sqflite.dart';

import '../../../commons/models/event_model.dart';
import '../scripts/manipulation/ka_hikers_event_manipulation.dart';
import '../scripts/query/ka_hikers_event_query.dart';
import 'local_database.dart';

class EventDatabaseService {
	
	static Future<Database> _database() async => await LocalDatabase.getDatabase();

	static Future<void> insert ({required EventModel event}) async
	{
		await _database().then((db) => db.rawInsert(KaHikersEventManipulation.insert(event: event)));
	}

	static Future<void> updateParticipantsCountBy ({required EventModel event, required int target}) async
	{
		await _database().then((db) => db.rawUpdate(KaHikersEventManipulation.updateParticipantsCountBy(event: event, target: target)));
	}

	static Future<List<EventModel>> findAll() async
	{
		final data = await _database().then((db) => db.rawQuery(KaHikersEventQuery.findAll()));
		return EventModel.toEventModels(data: data);
	}
}