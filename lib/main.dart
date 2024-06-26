import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'screens/root-app/rootapp.dart';


void main() {
	WidgetsFlutterBinding.ensureInitialized();
	if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
		// Initialize sqflite ffi for desktop platforms
		sqfliteFfiInit();
		sqflite.databaseFactory = databaseFactoryFfi;
	} else {
		// Initialize sqflite for mobile platforms
		sqflite.databaseFactory = sqflite.databaseFactory;
	}


	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return const GetMaterialApp(
			home: RootApp(),
			debugShowCheckedModeBanner: false,
		);
	}
}

