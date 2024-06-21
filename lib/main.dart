import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slash_app/view/bottom_nav_bar.dart';
import 'package:slash_app/view/favourites_screen.dart';
import 'package:slash_app/view/homeScreen.dart';
import 'package:slash_app/viewModel/DataCubit/data_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DataCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
            textTheme: TextTheme(
          bodyLarge: GoogleFonts.urbanist(),
          bodyMedium: GoogleFonts.urbanist(),
        )),
        debugShowCheckedModeBanner: false,
        home: BottomNavBarScreen(),
      ),
    );
  }
}
