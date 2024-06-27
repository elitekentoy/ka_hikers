
import 'package:get/get.dart';
import 'package:ka_hikers/commons/constants/ka_hikers_database_details.dart';

class EventModel {

	final String id;
	final String eventName;
	final DateTime date;
	final String? location;
	final String meetupPlace;
	final String image;
	final String? description;
	final int? participantsCount;

	EventModel({
		required this.id,
		required this.eventName,
		required this.date,
		this.location,
		required this.meetupPlace,
		required this.image,
		this.description,
		this.participantsCount,
	});

	factory EventModel.fromMap({required Map<String, dynamic> map})
	{
		return EventModel(
			id: map[KaHikersColumns.ID], 
			eventName: map[KaHikersColumns.EVENT_NAME], 
			date: DateTime.parse(map[KaHikersColumns.DATE]), 
			meetupPlace: map[KaHikersColumns.MEETUP_PLACE], 
			image: map[KaHikersColumns.IMAGE],
		);
	}

	static List<EventModel> toEventModels({required List<Map<String, dynamic>> data})
	{
		if (data.isEmpty) return [];
		return data.map((each) => EventModel.fromMap(map: each)).toList();
	}
}