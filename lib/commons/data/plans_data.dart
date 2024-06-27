
// ignore_for_file: non_constant_identifier_names



import '../constants/ka_hikers_constants.dart';
import '../models/event_model.dart';

List<EventModel> DUMMY_PLANS = [
	EventModel(id: '1', eventName: 'Mt. Naupa', date: DateTime(2024, 6, 29, 13, 0), meetupPlace: 'Tungkop Minglanilla', image: "${KaHikersConstants.ASSET_IMAGE_PATH}/sample_naupa.jpg", participantsCount: 0),
	EventModel(id: '2', eventName: '6 Towers', date: DateTime.now(), meetupPlace: 'Guadalupe Church', image: "${KaHikersConstants.ASSET_IMAGE_PATH}/sample_mountain_1.jpg", participantsCount: 30)
];