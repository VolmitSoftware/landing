import 'package:arcane/arcane.dart';
import 'package:volmitsite/widgets/navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return FillScreen(
      header: VolmitBar(),
      child: SingleChildScrollView(
        child: Gutter(
          child: Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 400),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/logo.png', width: 60, height: 60),
                      Gap(32),
                      Text("Volmit Software").x3Large,
                    ],
                  ),
                ),
              ),
              Card(child: Center(child: Text("Our Products"))),
            ],
          ),
        ),
      ),
    );
  }
}
