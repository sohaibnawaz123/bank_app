import 'package:delivery_app/instance.dart';
import 'package:delivery_app/modules/auth/presentation/blocs/login/login_bloc.dart';
import 'package:delivery_app/modules/auth/presentation/routes/login_view_initial_params.dart';
import 'package:delivery_app/modules/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

late GetIt getIt;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  getIt = GetIt.instance;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  void didChangeDependencies() {
    getInstance(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ScreenUtilInit(
        designSize: const Size(402, 871),
        child: LoginView(
          bloc: getIt<LoginBloc>(param1: LoginViewInitialParams()),
        ),
      ),
    );
  }
}
