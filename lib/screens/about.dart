import 'package:arcane/arcane.dart';
import 'package:volmitsite/widgets/navbar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FillScreen(
      header: VolmitBar(),
      child: Gutter(child: Center(child: Text("About Page"))),
    );
  }
}
