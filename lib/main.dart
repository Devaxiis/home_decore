import 'library.dart';


void main() async{
  await dotenv.load(fileName: "assets/.env");
  runApp(const MyApp());
}


