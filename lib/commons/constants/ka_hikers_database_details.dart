

// ignore_for_file: constant_identifier_names

const String KA_HIKERS_LOCAL_DB_PATH = "Ka_Hikers_Local.db";
const int DATABASE_VERSION = 2;

class KaHikersTables {

	static const ROLE = "ROLE";
	static const EVENT = "EVENT";
	static const USER = "USER";
	static const HIKER = "HIKER";

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

	// user
	static const FIRST_NAME = "firstName";
	static const LAST_NAME = "lastName";
	static const NICKNAME = "nickname";
	static const FACEBOOK = "facebook";
	static const DATE_CREATED = "dateCreated";

	// hiker
	static const USER_ID = "userId";
	static const EVENT_ID = "eventId";
	static const ROLE_ID = "roleId";
	static const ACTIVE = "active";

}