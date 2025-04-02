import 'package:arcane/arcane.dart';
import 'package:volmitsite/widgets/navbar.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FillScreen(header: VolmitBar(), child: Gutter(child: Center(child: Text("You are on the producvts page hahah get fuckt"),)));
  }
}
