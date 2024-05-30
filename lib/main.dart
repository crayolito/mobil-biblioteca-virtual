import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teslo_shop/config/bloc/audioLibro/audio_libro_bloc.dart';
import 'package:teslo_shop/config/bloc/auth/auth_bloc.dart';
import 'package:teslo_shop/config/bloc/categoria/categoria_bloc.dart';
import 'package:teslo_shop/config/bloc/libro/libro_bloc.dart';
import 'package:teslo_shop/config/bloc/login/login_form_bloc.dart';
import 'package:teslo_shop/config/bloc/registro/registro_form_bloc.dart';
import 'package:teslo_shop/config/bloc/search/search_bloc.dart';
import 'package:teslo_shop/config/bloc/traductorLibro/traductor_libro_bloc.dart';
import 'package:teslo_shop/config/constants/const.dart';
import 'package:teslo_shop/config/constants/environment.dart';
import 'package:teslo_shop/config/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Environment.initEnvironment();

  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      create: (context) => AuthBloc(),
    ),
    BlocProvider(
      create: (context) =>
          LoginFormBloc(authBloc: BlocProvider.of<AuthBloc>(context)),
    ),
    BlocProvider(
      create: (context) => SearchBloc(),
    ),
    BlocProvider(
      create: (context) => LibroBloc(),
    ),
    BlocProvider(
      create: (context) => CategoriaBloc(),
    ),
    BlocProvider(
      create: (context) =>
          RegistroBloc(authBloc: BlocProvider.of<AuthBloc>(context)),
    ),
    BlocProvider(
      create: (context) => AudioLibroBloc(),
    ),
    BlocProvider(
      create: (context) => TraductorLibroBloc(),
    ),
  ], child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: kBlackColor)),
      debugShowCheckedModeBanner: false,
    );
  }
}
