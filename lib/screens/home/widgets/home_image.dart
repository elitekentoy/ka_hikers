

import 'package:flutter/material.dart';

class HomeImage extends StatelessWidget {
	const HomeImage({super.key, required this.image});
	final String image;

	@override
	Widget build(BuildContext context) {
		return Container(
			decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(25),
				image: DecorationImage(image: NetworkImage(image))
			),
			clipBehavior: Clip.hardEdge,
		);
	}
}