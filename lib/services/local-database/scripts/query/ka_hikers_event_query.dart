


import '../../../../commons/constants/ka_hikers_database_details.dart';

class KaHikersEventQuery {
	
	static String findAll()
	{
		return "SELECT * FROM ${KaHikersTables.EVENT}";
	}
}