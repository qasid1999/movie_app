import 'core/helpers/imports_helper.dart';
 import 'package:provider/single_child_widget.dart'; // ✅ Import SingleChildWidget

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<SingleChildWidget>> _providersFuture;

  @override
  void initState() {
    super.initState();
    _providersFuture = ProvidersList.initProviders(); // Initialize Providers
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<SingleChildWidget>>(
      future: _providersFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(body: Center(child: CircularProgressIndicator())),
          );
        } else if (snapshot.hasError) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(body: Center(child: Text("Error: ${snapshot.error}"))),
          );
        }

        return ScreenUtilInit(
          designSize: const Size(390, 844),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, child) {
            return MultiProvider(
              providers: snapshot.data!,
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: AppTheme().lightTheme(context),
                initialRoute: RoutesPaths.navBar,
                routes: Routes.routes,
                navigatorKey: navigatorKey,
              ),
            );
          },
        );
      },
    );
  }
}
