import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  bool value = true;
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          "Additional Information",
          style: TextStyle(fontSize: 23),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
              leading: const Icon(Icons.share),
              title: const Text(
                'Share Dukaan App',
                style: TextStyle(fontSize: 20),
              ),
              trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios), onPressed: () {})),
          ListTile(
              leading: const Icon(Icons.font_download_outlined),
              title: const Text(
                'Change Language',
                style: TextStyle(fontSize: 20),
              ),
              trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios), onPressed: () {})),
          ListTile(
              leading: const Icon(FontAwesome5.whatsapp),
              title: const Text(
                'Whatsapp Chat Support',
                style: TextStyle(fontSize: 19),
              ),
              trailing: IconButton(
                  icon: Switch(value: true, onChanged: (bool) {}),
                  onPressed: () {})),
          const ListTile(
            leading: Icon(Icons.lock_outline),
            title: Text(
              'Privacy Policy',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.star_border_outlined),
            title: Text(
              'Rate Us',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              'Sign Out',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 160),
          bottom(),
        ],
      ),
    );
  }
}

Widget bottom() => Column(
      children: const [
        Text("Version", style: TextStyle(color: Colors.grey, fontSize: 18)),
        Text(
          "2.4.2",
          style: TextStyle(
              color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
        )
      ],
    );
