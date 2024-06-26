
class PlanModel {

	final String id;
	final String title;
	final DateTime date;
	final String meetupPlace;
	final DateTime meetupTime;
	final String image;
	final int participantsCount;

	PlanModel({
		required this.id,
		required this.title,
		required this.date,
		required this.meetupPlace,
		required this.meetupTime,
		required this.image,
		required this.participantsCount,
	});
}