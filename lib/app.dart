import 'package:arcane/arcane.dart';
import 'package:volmitsite/screens/home.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) => ArcaneApp(
    theme: ArcaneTheme(
      chat: ChatTheme(messageGroupDistance: 0.ms),
      // defaultHeaderHeight: 56,
      scheme: ContrastedColorScheme.fromScheme(ColorSchemes.zinc),
      radius: 0.3,
      scaling: 1,
      surfaceOpacity: 1,
      surfaceBlur: 9.0,
      themeMode: ThemeMode.system,
    ),
    home: Home(),
  );
}
