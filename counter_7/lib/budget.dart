import 'package:flutter/material.dart';
import 'package:counter_7/add.dart';
import 'package:counter_7/main.dart';


class MyDataPage extends StatefulWidget {
    const MyDataPage({super.key});


    final String title = 'Data Budget';

    @override
    State<MyDataPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyDataPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text(widget.title),
            ),
            drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('Counter_7'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyAddPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDataPage()),
                );
              },
            ),
          ],
        ),
      ),
            body:ListView.builder(

                itemCount: Result.contain.length,
                itemBuilder: (context, index) {
                final item = Result.contain[index];

                  return ListTile(
                    title:Text(item.judul),subtitle:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[Text(item.nominal.toString()), Text(item.tipe)]),

            );
          },
        )
        );
    }
}

