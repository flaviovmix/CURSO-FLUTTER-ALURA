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
          //leading: Container(color: Colors.black12),
          title: Text('Tarefas'),
          backgroundColor: const Color.fromARGB(255, 94, 131, 147),
        ),
        body: ListView(
          //scrollDirection: Axis.horizontal,
          children: [
            Task('Curso Flutter'),
            Task('Curso Java'),
            Task('Curso HTML-5'),
            Task('Curso Git'),
            Task('Curso Git'),
            Task('Curso Git'),
            Task('Curso Git'),
            Task('Curso Git'),
            Task('Curso Git'),
            Task('Curso Git'),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;
  const Task(this.nome, {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.black, // nao sei porque o fundo nao ficou preto
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 120,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.black26,
                        width: 72,
                        height: 80,
                      ),
                      Container(
                          width: 200,
                          child: Text(widget.nome,
                              style: TextStyle(
                                  fontSize: 15,
                                  overflow: TextOverflow.ellipsis))),
                      Container(
                        width: 95,
                        height: 45,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (nivel >= 10) {
                                  nivel = 10;
                                } else {
                                  nivel++;
                                }
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.arrow_drop_up),
                                Text(
                                  'Level up',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        child: LinearProgressIndicator(
                          //color: Colors.white,
                          value: nivel / 10,
                        ),
                        width: 280,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        'Nivel $nivel',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
