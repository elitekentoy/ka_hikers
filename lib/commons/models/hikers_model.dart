

class HikersModel {

	final String userId;
	final String eventId;
	final int roleId;
	final DateTime? arrived;
	final bool active;

	HikersModel({
		required this.userId,
		required this.eventId,
		required this.roleId,
		this.arrived,
		required this.active
	});
	
}