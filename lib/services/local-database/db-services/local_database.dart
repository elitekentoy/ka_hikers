

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../../commons/constants/ka_hikers_database_details.dart';
import '../scripts/definition/ka_hikers_definition.dart';

class LocalDatabase {

	static Future<String> getFullPath() async 
	{
		return join(await getDatabasesPath(), KA_HIKERS_LOCAL_DB_PATH);
	}

	static Future<Database> getDatabase() async
	{
		return await openDatabase(await getFullPath(), version: DATABASE_VERSION,
		onCreate: (Database database, int version) async {
			// add database creation here
			await database.execute(KaHikersDefinition.CREATE_ROLES_TABLE);
			await database.execute(KaHikersDefinition.CREATE_EVENT_TABLE);
			await database.execute(KaHikersDefinition.CREATE_USER_TABLE);
			await database.execute(KaHikersDefinition.CREATE_HKERS_TABLE);
		});
	}

	static Future<void> deleteKaHikersDatabase() async 
	{
		await deleteDatabase(KA_HIKERS_LOCAL_DB_PATH);
	}

	static Future<void> printDatabases() async
	{
		print(await getFullPath());
		print (await getDatabase().then((db) => db.rawQuery("SELECT * FROM sqlite_master")));
	}
}