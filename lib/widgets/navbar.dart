import 'package:arcane/arcane.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _durl = Uri.parse(
  'https://discord.gg/volmit-software-189665083817852928',
);

final Uri _gurl = Uri.parse('https://github.com/VolmitSoftware');

Future<void> _launchDiscord() async {
  if (await canLaunchUrl(_durl)) {
    await launchUrl(_durl, mode: LaunchMode.externalApplication);
  } else {
    debugPrint("Could not launch $_durl");
  }
}

Future<void> _launchGithub() async {
  if (await canLaunchUrl(_gurl)) {
    await launchUrl(_gurl, mode: LaunchMode.externalApplication);
  } else {
    debugPrint("Could not launch $_gurl");
  }
}

class VolmitBar extends StatelessWidget {
  const VolmitBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Bar(
      backButton: BarBackButtonMode.never,
      trailing: [
        GhostButton(
          onPressed: _launchDiscord,
          // density: ButtonDensity.icon,
          child: SvgPicture.asset(
            'assets/discord.svg',
            width: 24, // Optional: set width
            height: 24, // Optional: set height,
            color: Colors.white,
          ),
        ),
        GhostButton(
          onPressed: _launchGithub,
          // density: ButtonDensity.icon,
          child: SvgPicture.asset(
            'assets/github-mark.svg',
            width: 24, // Optional: set width
            height: 24, // Optional: set height,
            color: Colors.white,
          ),
        ),
        // GhostButton(
        //   onPressed: () => Arcane.push(context, ProductsPage()),
        //   child: Text("Software"),
        // ),
        // Gap(8),

        // GhostButton(
        //   onPressed: () => Arcane.push(context, AboutPage()),
        //   child: Text("About"),
        // ),
        // Gap(8),
      ],
      leading: [
        Row(
          children: [
            Gap(8),
            Image.asset('assets/logo.png', width: 30, height: 30),
            Gap(8),
            Text("Volmit"),
          ],
        ),
        // GhostButton(
        //   leading: Image.asset('assets/logo.png', width: 30, height: 30),
        //   onPressed: () => Arcane.push(context, Home()),
        //   child: Text("Volmit"),
        // ),
      ],
    );
  }
}
