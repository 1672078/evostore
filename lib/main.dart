import 'package:evo_store/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bloc/Islogin/islogin_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => IsloginBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Evo Store',
        theme: ThemeData.light().copyWith(
          backgroundColor: Colors.white,
          bottomSheetTheme: const BottomSheetThemeData(
            backgroundColor: Colors.blue,
          ),
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.black),
          canvasColor: Colors.blue.shade700,
        ),
        home: const Welcome(),
      ),
    );
  }
}
