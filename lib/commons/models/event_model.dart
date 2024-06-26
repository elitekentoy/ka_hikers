
class EventModel {

	final String id;
	final String eventName;
	final DateTime date;
	final String? location;
	final String meetupPlace;
	final String image;
	final int? participantsCount;

	EventModel({
		required this.id,
		required this.eventName,
		required this.date,
		this.location,
		required this.meetupPlace,
		required this.image,
		this.participantsCount,
	});
}