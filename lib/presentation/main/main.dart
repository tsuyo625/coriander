import 'package:coriander/presentation/book_list/book_list_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'コリアンダー',
        home: ChangeNotifierProvider<MainModel>(
          create: (_) => MainModel(),
          child: Scaffold(
            appBar: AppBar(
              title: Text('コリアンダー'),
            ),
            body: Consumer<MainModel>(builder: (context, model, child) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      model.kboyText,
                      style: TextStyle(fontSize: 20),
                    ),
                    RaisedButton(
                      child: Text('ボタン'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookListPage(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              );
            }),
          ),
        ));
  }
}
