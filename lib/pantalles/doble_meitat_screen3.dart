import 'package:flutter/material.dart';

class DobleMeitatScreen3 extends StatefulWidget {

  @override
  State<DobleMeitatScreen3> createState() => _DobleMeitatScreen3State();
}

class _DobleMeitatScreen3State extends State<DobleMeitatScreen3> {
  double valor = 1.00;
  void onDoblar(){
    valor = valor*2.00;
    setState(() {

    });

  }

  void onDividir(){
    valor = valor/2.00;
    setState(() {

    });

  }

  void onInit(){
    valor = 1;
    setState(() {

    });

  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Doble i meitat per Arnau Rodriguez'), backgroundColor: Colors.blue, centerTitle:true,),
        body:  Center(
          // child: Text('Hello World!')
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [ Text('Prem el botó que vulguis', style: TextStyle(fontSize: 30)),
            Text('Valor actual: $valor',  style: TextStyle(fontSize: 20))]),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(onPressed: onDividir,
              child: const Icon(Icons.swipe_down),
              tooltip: 'Dividir per 2',
              backgroundColor: Colors.redAccent, foregroundColor: Colors.white,
            ),
            SizedBox(width: 10,),
            FloatingActionButton(onPressed: onInit,
              child: const Icon(Icons.circle_outlined),
              tooltip: 'Reiniciar',
              backgroundColor: Colors.yellowAccent, foregroundColor: Colors.black,
            ),
            SizedBox(width: 10,),
            FloatingActionButton(onPressed: onDoblar,
              child: const Icon(Icons.swipe_up),
              tooltip: 'Doblar per 2',
              backgroundColor: Colors.blueAccent, foregroundColor: Colors.white,
            ),

          ],
        ),
      ),
    );
  }
}