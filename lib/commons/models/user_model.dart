
class UserModel {

	final String id;
	final String firstName;
	final String lastName;
	final String nickname;
	final String facebook;
	final DateTime dateCreated;
	final String? image;

	UserModel({
		required this.id,
		required this.firstName,
		required this.lastName,
		required this.nickname,
		required this.facebook,
		required this.dateCreated,
		this.image,
	});

}