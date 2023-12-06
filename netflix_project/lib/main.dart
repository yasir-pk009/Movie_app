import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_project/application/Downloads_bloc/downloads_bloc.dart';
import 'package:netflix_project/application/fastLagh/fastLagh_bloc/fast_lagh_bloc.dart';
import 'package:netflix_project/application/home/home_bloc.dart';
import 'package:netflix_project/application/hotandnew/hotandnew_bloc/hotandnew_bloc.dart';
import 'package:netflix_project/application/search_bloc/bloc/search_bloc.dart';
import 'package:netflix_project/core/colors/colors.dart';
import 'package:netflix_project/domain/core/dependency_injection/injection.dart';
import 'package:netflix_project/firebase_options.dart';
// import 'package:netflix_project/presentation/login/auth_page.dart';
// import 'package:netflix_project/presentation/login/login.dart';
// import 'package:netflix_project/core/colors/colors.dart';
// import 'package:netflix_project/presentation/main_page/screen_,main_page.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:netflix_project/presentation/main_page/screen_,main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureIndjection();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<DownloadsBloc>()),
        BlocProvider(create: (context) => getIt<SearchBloc>()),
        BlocProvider(create: (context) => getIt<FastLaghBloc>()),
        BlocProvider(create: (context) => getIt<HotandnewBloc>()),
        BlocProvider(create: (context) => getIt<HomeBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const ScreenMainPage(),
        title: "Netflix demo app",
        theme: ThemeData(
            textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white),
            ),
            scaffoldBackgroundColor: backgroundColor,
            primarySwatch: Colors.blue),
      ),
    );
  }
}
