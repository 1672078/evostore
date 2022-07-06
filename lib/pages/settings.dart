import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _notifikasi = true;
  bool _email = true;
  bool _sms = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            children: [
              Text(
                "Notifikasi",
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          //switch
          SwitchListTile(
            title: const Text("Push Notification"),
            value: _notifikasi,
            onChanged: (value) {
              setState(() {
                _notifikasi = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text("Email"),
            value: _email,
            onChanged: (value) {
              setState(() {
                _email = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text("SMS"),
            value: _sms,
            onChanged: (value) {
              setState(() {
                _sms = value;
              });
            },
          ),
          Row(
            children: [
              Text(
                "Keamanan Akun",
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          const ListTile(
            title: Text("Ubah Password"),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          const ListTile(
            title: Text("Face ID"),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          const ListTile(
            title: Text("Verifikasi Data Diri"),
            trailing:  Icon(Icons.arrow_forward_ios_outlined),
          ),
        ]),
      ),
    );
  }
}
