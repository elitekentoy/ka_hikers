

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

blackTextStyle({required double fontSize, required FontWeight fontWeight})
{
	return GoogleFonts.poppins(
		textStyle: TextStyle(
			color: Colors.black,
			fontSize: fontSize,
			fontWeight: fontWeight
		)
	);
}