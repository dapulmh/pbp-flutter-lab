import 'package:flutter/material.dart';
import 'package:counter_7/page/add.dart';
import 'package:counter_7/drawer.dart';

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
            drawer: const MyDrawer(),
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

