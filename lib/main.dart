import 'package:flutter/material.dart';
import 'package:quotes_widget/quotes_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home:  Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Motivational Quotes App"),
        ),

        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2
            ),
            itemBuilder: (context, index){
              return Container(

                child: Center(
                  child: QuotesWidget(
                    height: 299,
                    width: 200,
                    quoteFontSize: 15,
                    authorFontSize: 10,
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}

