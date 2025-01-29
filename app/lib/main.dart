import 'package:app/core/app.dart';
import 'package:app/core/di/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  
  configureDependencies();

  await dotenv.load(fileName: '.env');
  
  runApp(const MyApp());
  
}