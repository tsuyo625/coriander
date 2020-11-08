import 'package:coriander/main_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          body: Consumer<MainModel>(
            builder: (context, model, child) {
              return Center(
                child: Column(
                  children: [
                    Text(
                      model.kboyText,
                      style: TextStyle(
                        fontSize: 34
                      ),
                    ),
                    RaisedButton(
                      child: Text('ボタン'),
                      onPressed: (){
                        model.changeKboyText();
                      },
                    )
                  ],
                ),
              );
            }
          ),
        ),
      )
    );
  }
}