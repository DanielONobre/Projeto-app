import 'package:flutter/material.dart';

void main() {runApp(MaterialApp(
	title: 'OAT MOBILE',
	 theme: ThemeData(
	   primarySwatch: Colors.cyan
         ),
         home: const PrimeiraRota(),
      )
    );
}

class PrimeiraRota extends StatelessWidget {
  const PrimeiraRota({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primeira Tela'),
      ),
      body: Center(
        child:
            ElevatedButton(
              child: const Text('Ver a outra tela'),
              onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SegundaRota()),
            );
          },
        ),
      
      ),
      
    );
  }
}


class SegundaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda tela"),
      ),
      body: Center(
        child: 
        ElevatedButton(
          onPressed: () { 
            Navigator.pop(context);
          },
          child: Text('Retornar !'),
        ),
       ),
    );
  }
}