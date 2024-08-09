import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tarefas'),
          backgroundColor: const Color.fromARGB(255, 94, 131, 147),
        ),
        body: Container(
          color: Colors.black, // nao sei porque o fundo nao ficou preto
          child: Stack(
            children: [
              Container(
                color: Colors.blue,
                height: 140,
              ),
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black26,
                      width: 72,
                      height: 100,
                    ),
                    Text('Curso de Flutter'),
                    ElevatedButton(
                        onPressed: () {}, child: Icon(Icons.arrow_drop_up))
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}
