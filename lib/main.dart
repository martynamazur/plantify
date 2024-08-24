import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:plants_manager/presentation/add_new_plant.dart';
import 'package:plants_manager/presentation/edit_plant.dart';
import 'package:plants_manager/presentation/favourite.dart';
import 'package:plants_manager/presentation/login.dart';
import 'package:plants_manager/presentation/main_screen.dart';
import 'package:plants_manager/presentation/offer_details.dart';
import 'package:plants_manager/presentation/onboarding.dart';
import 'package:plants_manager/presentation/account_settings.dart';
import 'package:plants_manager/presentation/plant_details.dart';
import 'package:plants_manager/presentation/registration.dart';
import 'package:plants_manager/presentation/registration_successful.dart';
import 'package:plants_manager/presentation/reset_password.dart';
import 'package:plants_manager/presentation/search_results.dart';
import 'package:plants_manager/presentation/settings.dart';
import 'package:plants_manager/presentation/splash_screen.dart';
import 'package:plants_manager/presentation/water_schedule.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'domain/database/category.dart';
import 'domain/database/user_account_information.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");
  await Supabase.initialize(
    url: 'https://fbxbpzmlcfnwkjfqofeu.supabase.co',
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );
  await Hive.initFlutter();


  Hive.registerAdapter(CategoryAdapter());
  Hive.registerAdapter(UserAccountInformationAdapter());

  await Hive.openBox<UserAccountInformation>('userAccountBox');
  var categoriesBox = await Hive.openBox<Category>('categoriesBox');
  await setupCategoriesBox(categoriesBox);

  runApp(ProviderScope(child: MyApp()));
}

final supabase = Supabase.instance.client;


class MyApp extends StatelessWidget {
  MyApp({super.key});
  //final box = Hive.box(darkModeBox);

  @override
  Widget build(BuildContext context) {
    //var darkMode = box.get('darkMode', defaultValue: false);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightGreen,
          primary: Colors.lightGreen,
          secondary: Colors.greenAccent,
          surface: Color(0xFFFFFFFF),
          background: Color(0xFFFFFFFF),
        ),
        useMaterial3: true,

      ),
      //darkTheme: ThemeData.dark(),
      //themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
      home: const SplashPage(),
      routes: {
        '/login': (context) => const Login(),
        '/registration': (context) => const Registration(),
        '/registrationSuccessful': (context) => const RegistrationSuccessful(),
        '/resetPassword': (context) => const ResetPassword(),
        '/waterSchedule': (context) => const WaterSchedule(),
        '/addPlant': (context) => const AddPlant(),
        '/plantDetails': (context) => PlantDetails(),
        '/editPlant': (context) => EditPlant(),
        '/myHomePage': (context) => MainScreen(),
        '/onboarding': (context) => Onboarding(),
        '/settings': (context) => Settings(),
        '/accountSettings': (context) => AccountSettings(),
        '/favourite': (context) => Favourite(),
        '/searchResults': (context) => SearchResults(),
        '/offerDetails' : (context) => OfferDetails()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}


