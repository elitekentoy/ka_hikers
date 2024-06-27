
import 'package:uuid/uuid.dart';

class KaHikersFunctions {
	static String generateUID()
	{
		return const Uuid().v4();
	}
}