
import 'package:flutter/material.dart';

import 'widgets/home_body.dart';

class Home extends StatelessWidget {
	const Home({super.key});

	@override
	Widget build(BuildContext context) {
		return const Scaffold(
			body: HomeBody(),
		);
	}
}