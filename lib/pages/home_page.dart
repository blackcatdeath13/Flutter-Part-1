import 'package:flutter/material.dart';
import 'package:flutter_lagu_daerah_app/data/models/province.dart';
import 'package:flutter_lagu_daerah_app/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chord Lagu Daerah',
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 2,
        backgroundColor: const Color.fromARGB(255, 80, 132, 175),
      ),
      drawer: const Drawer(
        child: SingleChildScrollView(
          child: SafeArea(
            child: AboutListTile(
              icon: Icon(Icons.info),
              applicationIcon: FlutterLogo(),
              applicationName: 'Chord Lagu Daerah',
              applicationVersion: 'Agustus 2024',
              applicationLegalese:
                  'Aplikasi Chord Lagu Daerah merupakan aplikasi pertama saya setelah mengikuti pelatihan FIC Mastering Flutter Part 1 di Jagoflutter.com dengan mentor Bapak Saiful Bahri',
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPage(province: laguDaerahList[index]);
              }));
            },
            child: Card(
              child: ListTile(
                title: Text(laguDaerahList[index].laguDaerah),
                subtitle: Text(
                    '${laguDaerahList[index].nama} - ${laguDaerahList[index].ibuKota}'),
                leading: Image.network(
                  laguDaerahList[index].photo,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
        itemCount: laguDaerahList.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Request Chord Lagu Daerah'),
                  content: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        decoration: InputDecoration(labelText: 'Nama Lagu'),
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Nama Daerah'),
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Chord Dasar'),
                      )
                    ],
                  ),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancel')),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Submit')),
                  ],
                );
              });
        },
        backgroundColor: const Color.fromARGB(255, 80, 132, 175),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
