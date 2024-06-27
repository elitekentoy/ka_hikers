

// ignore_for_file: constant_identifier_names

const String KA_HIKERS_LOCAL_DB_PATH = "Ka_Hikers_Local.db";
const int DATABASE_VERSION = 2;

class KaHikersTables {

	static const ROLE = "ROLE";
	static const EVENT = "EVENT";

}

class KaHikersColumns {

	//common
	static const ID = "id";
	static const DESCRIPTION = "description";

	// role
	static const NAME = "name";

	// event
	static const EVENT_NAME = "eventName";
	static const DATE = "date";
	static const LOCATION = "location";
	static const MEETUP_PLACE = "meetupPlace";
	static const PARTICIPANTS_COUNT = "participantsCount";
	static const IMAGE = "image";

}