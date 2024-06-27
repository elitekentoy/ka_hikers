

import 'package:flutter/material.dart';
import 'package:ka_hikers/commons/constants/ka_hikers_colors.dart';

import '../../../commons/models/user_model.dart';
import '../../../commons/themes/ka_hikers_themes.dart';


class AttendanceTile extends StatelessWidget {
	const AttendanceTile({super.key, required this.user, required this.active});
	final UserModel user;
	final bool active;

	@override
	Widget build(BuildContext context) {
		return ListTile(
			tileColor: active ? KaHikersColors.PALE_GREEN : null,
			leading: user.image == null
				? const CircleAvatar(
					backgroundColor: Colors.grey,
				)
				: CircleAvatar(
					backgroundImage: NetworkImage(user.image!),
				),
			title: Text(
				"${user.firstName} ${user.lastName}",
				style: blackTextStyle(fontSize: 14, fontWeight: FontWeight.normal),
			),
			subtitle: Text(
				user.nickname,
				style: blackTextStyle(fontSize: 8, fontWeight: FontWeight.normal),
			),
		);
	}
}